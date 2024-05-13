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

    @objc func sendEventToNative(_ name: String, payload: [AnyHashable: Any]? = nil) {
        if let registerEvent = RegisterEvent(rawValue: name) {
            registerEventSubject.value = registerEvent
        }
        let jsEvent = JSEvent(name: name, payload: payload)
        jsEventSubject.send(jsEvent)
    }
}

public struct JSEvent {
    let name: String
    let payload: [AnyHashable: Any]?
}

enum RegisterEvent: String {
    case register
    case deregister
}
