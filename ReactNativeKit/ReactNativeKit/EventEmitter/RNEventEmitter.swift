import Foundation
import Combine
@_implementationOnly import React

@objc(RNEventEmitter)
class RNEventEmitter: RCTEventEmitter {
    let jsEventStream = AsyncStream.makeStream(of: JSEvent.self)
    let registerEventStream = AsyncStream.makeStream(of: RegisterEvent.self)

    private static var _shared: RNEventEmitter?
    static var shared: RNEventEmitter {
        if let shared = _shared {
            return shared
        }
        logger.debug("RNEventEmitter.shared is accessed but not initialized yet. Waiting for initialization.")
        initializationSemaphore.wait()
        return _shared!
    
    }
    private static let initializationSemaphore = DispatchSemaphore(value: 0)

    var events: [String] = []
    override init() {
        super.init()
        RNEventEmitter._shared = self
        RNEventEmitter.initializationSemaphore.signal()
        jsEventStream.continuation.onTermination = { _ in
            logger.debug("JS event stream terminated")
        }
        logger.debug("RNEventEmitter initialized")
    }

    override func supportedEvents() -> [String] {
        logger.debug("\(#function) \(self.events)")
        return events
    }

    @objc func sendEventToNative(_ name: String, payload: [AnyHashable: Any]? = nil) {
        if let registerEvent = RegisterEvent(rawValue: name) {
            registerEventStream.continuation.yield(registerEvent)
        }
        let jsEvent = JSEvent(name: name, payload: payload)
        jsEventStream.continuation.yield(jsEvent)
        logger.debug("Event sent to native stream: \(name) with payload: \(String(describing: payload))")
    }
}

public struct JSEvent: @unchecked Sendable {
    public let name: String
    public let payload: [AnyHashable: Any]?
}

enum RegisterEvent: String, Sendable {
    case register
    case deregister
}
