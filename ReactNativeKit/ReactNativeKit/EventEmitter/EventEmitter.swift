import Combine

public actor EventEmitter<EventType: SupportedEvent> {
    public init() {
        Task {
            if #available(iOS 16, *) {
                for i in 1...100000 {
                    try? await Task.sleep(nanoseconds: 1000000000)
                    await emitter.jsEventStream.continuation.yield(.init(name: "test\(i)", payload: [:]))
                }
            }
        }
    }

    private var emitter: RNEventEmitter {
        RNEventEmitter.shared
    }

    public var jsEventStream: AsyncStream<JSEvent> {
        emitter.jsEventStream.stream
    }

    public func emitEvent(_ event: EventType, payload: [AnyHashable: Any]? = [:]) async {
        if emitter.events.isEmpty {
            logger.debug("Event emitter does not have any supported events. Registering all events.")
            emitter.events = EventType.allEvents
        }
        if emitter.registerEventSubject.value != .register {
            logger.debug("Event emitter is not registered yet. Waiting for registration.")
            await waitForRegistration()
        }
        guard emitter.registerEventSubject.value == .register else {
            assertionFailure("Event emitter is not registered even after waiting for registration.")
            return
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
