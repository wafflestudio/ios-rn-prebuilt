import Foundation
@_implementationOnly import React

@objc(RNEventEmitter)
class RNEventEmitter: RCTEventEmitter {
    private let events: [any SupportedEvent]
    init(supportedEvents: [any SupportedEvent]) {
        self.events = supportedEvents
        super.init()
    }

    override func supportedEvents() -> [String] {
        events.map { $0.rawValue }
    }
}
