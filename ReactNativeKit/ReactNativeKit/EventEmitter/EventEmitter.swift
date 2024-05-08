public class EventEmitter<EventType: SupportedEvent> {
    private let internalEmitter: RNEventEmitter

    public init() {
        self.internalEmitter = RNEventEmitter(supportedEvents: EventType.allEvents)
    }

    public func emitEvent(_ event: EventType, payload: [AnyHashable: Any]? = [:]) {
        internalEmitter.sendEvent(withName: event.rawValue, body: payload)
    }
}

public protocol SupportedEvent: RawRepresentable, CaseIterable where RawValue == String {}
extension SupportedEvent {
    fileprivate static var allEvents: [RawValue] {
        Self.allCases.map { $0.rawValue }
    }
}
