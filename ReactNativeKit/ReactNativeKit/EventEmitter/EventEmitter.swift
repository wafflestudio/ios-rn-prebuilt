public class EventEmitter {
    private let internalEmitter: RNEventEmitter

    public init(supportedEvents: [any SupportedEvent]) {
        self.internalEmitter = RNEventEmitter(supportedEvents: supportedEvents)
    }

    public func emitEvent(_ event: any SupportedEvent, payload: [AnyHashable: Any]? = [:]) {
        internalEmitter.sendEvent(withName: event.rawValue, body: payload)
    }
}

public protocol SupportedEvent: RawRepresentable where RawValue == String {}
