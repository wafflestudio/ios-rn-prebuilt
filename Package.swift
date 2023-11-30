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
        .binaryTarget(name: "OpenSSL", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.6.0/OpenSSL.xcframework.zip", checksum: "77bf3692497ce3069843edb238ebd97be75128bc347fa5c387b9a84c809ec941"),
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.6.0/ReactNativeKit-Debug.xcframework.zip", checksum: "428ea5bcc31ed39654c27b1c269dc7808fd26814e8abf0172c1fabd087e5ea00"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.6.0/ReactNativeKit-Release.xcframework.zip", checksum: "f596137ef71e73edadf3288a10689cbfc0f73591de32f840bcce65fe92f4704b"),
        .binaryTarget(name: "double-conversion", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.6.0/double-conversion.xcframework.zip", checksum: "7c119bd9c5a26a6e08af036c7a2fe2fde6383d0b31a508bc5a764e7981325448"),
        .binaryTarget(name: "glog", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.6.0/glog.xcframework.zip", checksum: "de149ab5a3885f5e5949e2f6be5c7ecb9fd4e48b75ab54477bcaef2d1ad7fd18"),
        
    ]
)
