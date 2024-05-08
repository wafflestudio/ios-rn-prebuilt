public class EventEmitter {
    private let internalEmitter: RNEventEmitter

    public init(supportedEvents: [SupportedEvent]) {
        self.internalEmitter = RNEventEmitter(supportedEvents: supportedEvents)
    }

    public func emitEvent(_ event: SupportedEvent, payload: [AnyHashable: Any]) {
        internalEmitter.sendEvent(withName: event.description, body: payload)
    }
}

public protocol SupportedEvent: CustomStringConvertible {}
