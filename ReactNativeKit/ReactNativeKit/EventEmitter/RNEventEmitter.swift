import Foundation
@_implementationOnly import React

@objc(RNEventEmitter)
class RNEventEmitter: RCTEventEmitter {
    static var shared: RNEventEmitter?
    var events: [String] = []
    override init() {
        super.init()
        RNEventEmitter.shared = self
    }

    override func supportedEvents() -> [String] {
        events.map { $0 }
    }
}
