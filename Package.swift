// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "ReactNativeKit",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "ReactNativeKit",
            targets: ["OpenSSL","ReactNativeKit-Release","double-conversion","glog"]
        ),
        .library(
            name: "ReactNativeDevKit",
            targets: ["OpenSSL","ReactNativeKit-Debug","double-conversion","glog"]
        )
    ],
    targets: [
        .binaryTarget(name: "OpenSSL", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.1/OpenSSL.xcframework.zip", checksum: "f922ec78a99f156f34ced11829bffbc6363adefbe2b51c8d39503645f8d1b571"),
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.1/ReactNativeKit-Debug.xcframework.zip", checksum: "8924a5a5e4ed8d6b8dba01f7ab2047db37b058f6b9be1ab11168c9f4e5815b6d"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.1/ReactNativeKit-Release.xcframework.zip", checksum: "327129603533f4debf8108e2a335742cc134bf3ad079577674c42170429b0bdb"),
        .binaryTarget(name: "double-conversion", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.1/double-conversion.xcframework.zip", checksum: "ea32d258373810b51b5d88e2e4dcf407c3b07d8ad28f6367e6627e3a587e44a6"),
        .binaryTarget(name: "glog", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.1/glog.xcframework.zip", checksum: "3bb08da8d1c98ae1e880c1f4fca4938aa9c31a1c33bf87cbe4c2d5ae4de6797f"),
        
    ]
)
