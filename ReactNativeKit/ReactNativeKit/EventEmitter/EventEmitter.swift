public actor EventEmitter<EventType: SupportedEvent> {
    public init() {}

    private var emitter: RNEventEmitter {
        RNEventEmitter.shared
    }

    public func emitEvent(_ event: EventType, payload: [AnyHashable: Any]? = [:]) async {
        if emitter.events.isEmpty {
            emitter.events = EventType.allEvents
        }
        emitter.sendEvent(withName: event.rawValue, body: payload)
    }
}

public protocol SupportedEvent: RawRepresentable, CaseIterable where RawValue == String {}
extension SupportedEvent {
    fileprivate static var allEvents: [RawValue] {
        Self.allCases.map { $0.rawValue }
    }
}
