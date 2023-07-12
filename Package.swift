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
            targets: ["OpenSSL","ReactNativeKit-Release","double-conversion","glog","hermes"]
        ),
        .library(
            name: "ReactNativeDevKit",
            targets: ["OpenSSL","ReactNativeKit-Debug","double-conversion","glog","hermes"]
        )
    ],
    targets: [
        .binaryTarget(name: "OpenSSL", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/v0.72.2/OpenSSL.xcframework.zip", checksum: ""),
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/v0.72.2/ReactNativeKit-Debug.xcframework.zip", checksum: ""),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/v0.72.2/ReactNativeKit-Release.xcframework.zip", checksum: ""),
        .binaryTarget(name: "double-conversion", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/v0.72.2/double-conversion.xcframework.zip", checksum: ""),
        .binaryTarget(name: "glog", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/v0.72.2/glog.xcframework.zip", checksum: ""),
        .binaryTarget(name: "hermes", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/v0.72.2/hermes.xcframework.zip", checksum: ""),
        
    ]
)
