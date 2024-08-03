import Foundation
import Combine
@_implementationOnly import React

@objc(RNEventEmitter)
class RNEventEmitter: RCTEventEmitter {
    let jsEventSubject = PassthroughSubject<JSEvent, Never>()
    let registerEventSubject = CurrentValueSubject<RegisterEvent, Never>(.deregister)

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
        logger.debug("RNEventEmitter initialized")
    }

    override func supportedEvents() -> [String] {
        logger.debug("\(#function) \(self.events)")
        return events
    }

    @objc func sendEventToNative(_ name: String, payload: [AnyHashable: Any]? = nil) {
        logger.debug("\(#function) name:\(name) payload:\(String(describing: payload))")
        if let registerEvent = RegisterEvent(rawValue: name) {
            registerEventSubject.value = registerEvent
        }
        let jsEvent = JSEvent(name: name, payload: payload)
        jsEventSubject.send(jsEvent)
    }
}

public struct JSEvent {
    public let name: String
    public let payload: [AnyHashable: Any]?
}

enum RegisterEvent: String {
    case register
    case deregister
}
