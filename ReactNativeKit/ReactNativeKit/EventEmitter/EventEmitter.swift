import Combine

public actor EventEmitter<EventType: SupportedEvent> {
    public init() {}

    private var emitter: RNEventEmitter {
        RNEventEmitter.shared
    }

    public var jsEventPublisher: AnyPublisher<JSEvent, Never> {
        emitter.jsEventSubject.eraseToAnyPublisher()
    }

    public func emitEvent(_ event: EventType, payload: [AnyHashable: Any]? = [:]) async {
        if emitter.registerEventSubject.value != .register {
            logger.debug("Event emitter is not registered yet. Waiting for registration.")
            await waitForRegistration()
        }
        guard emitter.registerEventSubject.value == .register else {
            assertionFailure("Event emitter is not registered even after waiting for registration.")
            return
        }
        if emitter.events.isEmpty {
            logger.debug("Event emitter does not have any supported events. Registering all events.")
            emitter.events = EventType.allEvents
        }
        logger.debug("Emitting event: \(event.rawValue) with payload: \(String(describing: payload))")
        emitter.sendEvent(withName: event.rawValue, body: payload)
    }

    private func waitForRegistration() async {
        var cancellable: AnyCancellable?
        await withCheckedContinuation { continuation in
            cancellable = emitter.registerEventSubject
                .sink { event in
                    if event == .register {
                        logger.debug("Event emitter is registered.")
                        continuation.resume()
                    }
                }
        }
        cancellable?.cancel()
    }
}

public protocol SupportedEvent: RawRepresentable, CaseIterable where RawValue == String {}
extension SupportedEvent {
    fileprivate static var allEvents: [RawValue] {
        Self.allCases.map { $0.rawValue }
    }
}
