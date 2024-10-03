import Combine

public actor EventEmitter<EventType: SupportedEvent> {
    private var isRegistered = false
    public init() {
        Task { [weak self] in
            guard let stream = await self?.emitter.registerEventStream.stream else { return }
            for await registerEvent in stream {
                guard let self else { return }
                if registerEvent == .register {
                    await setIsRegistered()
                }
            }
        }
    }

    private var emitter: RNEventEmitter {
        RNEventEmitter.shared
    }

    private func setIsRegistered() {
        isRegistered = true
        emitter.registerEventStream.continuation.finish()
    }

    public var jsEventStream: AsyncStream<JSEvent> {
        emitter.jsEventStream.stream
    }

    public func emitEvent(_ event: EventType, payload: [AnyHashable: Any]? = [:]) async {
        if emitter.events.isEmpty {
            logger.debug("Event emitter does not have any supported events. Registering all events.")
            emitter.events = EventType.allEvents
        }
        if !isRegistered {
            logger.debug("Event emitter is not registered yet. Waiting for registration.")
            await waitForRegistration()
        }
        logger.debug("Emitting event: \(event.rawValue) with payload: \(String(describing: payload))")
        emitter.sendEvent(withName: event.rawValue, body: payload)
    }

    private func waitForRegistration() async {
        while !isRegistered {
            try? await Task.sleep(nanoseconds: 10_000_000) // 10ms
        }
    }
}

public protocol SupportedEvent: RawRepresentable, CaseIterable where RawValue == String {}
extension SupportedEvent {
    fileprivate static var allEvents: [RawValue] {
        Self.allCases.map { $0.rawValue }
    }
}
