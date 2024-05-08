import Foundation
@_implementationOnly import React

@objc(RNEventEmitter)
class RNEventEmitter: RCTEventEmitter {
    private let events: [String]
    init(supportedEvents: [String]) {
        self.events = supportedEvents
        super.init()
    }

    override func supportedEvents() -> [String] {
        events.map { $0 }
    }
}
