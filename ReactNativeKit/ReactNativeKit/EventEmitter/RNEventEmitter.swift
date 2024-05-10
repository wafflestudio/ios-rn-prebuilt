import Foundation
@_implementationOnly import React

@objc(RNEventEmitter)
class RNEventEmitter: RCTEventEmitter {
    var events: [String] = []
    override init() {
        super.init()
    }

    override func supportedEvents() -> [String] {
        events.map { $0 }
    }
}
