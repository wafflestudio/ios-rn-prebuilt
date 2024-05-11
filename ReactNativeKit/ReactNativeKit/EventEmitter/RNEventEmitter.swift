import Foundation
@_implementationOnly import React

@objc(RNEventEmitter)
class RNEventEmitter: RCTEventEmitter {
    private static var _shared: RNEventEmitter?
    static var shared: RNEventEmitter {
        if let shared = _shared {
            return shared
        }
        initializationSemaphore.wait()
        return _shared!
    
    }
    private static let initializationSemaphore = DispatchSemaphore(value: 0)

    var events: [String] = []
    override init() {
        super.init()
        RNEventEmitter._shared = self
        RNEventEmitter.initializationSemaphore.signal()
    }

    override func supportedEvents() -> [String] {
        events
    }
}
