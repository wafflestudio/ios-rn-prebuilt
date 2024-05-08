public class EventEmitter<EventType: SupportedEvent> {
    private let internalEmitter: RNEventEmitter

    public init(supportedEvents: [EventType]) {
        self.internalEmitter = RNEventEmitter(supportedEvents: supportedEvents)
    }

    public func emitEvent(_ event: EventType, payload: [AnyHashable: Any]? = [:]) {
        internalEmitter.sendEvent(withName: event.rawValue, body: payload)
    }
}

public protocol SupportedEvent: RawRepresentable where RawValue == String {}
