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
        .binaryTarget(name: "OpenSSL", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.72.3/OpenSSL.xcframework.zip", checksum: "2582a9ffa1f99e2fb5cb8e4d0ebbf8bd8b6fd61e8eb5adde9dd77b6389e2dbe1"),
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.72.3/ReactNativeKit-Debug.xcframework.zip", checksum: "d5072117c295b1fc336fcdb63dcf0b5c20ec29baf6013d26678a0e6f74cd6362"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.72.3/ReactNativeKit-Release.xcframework.zip", checksum: "e278e75c5365f82135a19d668a8849f724638288949af4aa86e0161809d99586"),
        .binaryTarget(name: "double-conversion", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.72.3/double-conversion.xcframework.zip", checksum: "2b1d43b3702a6db188bcc5f52f593af65db31fbebc8a7b83e46979076c89ff10"),
        .binaryTarget(name: "glog", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.72.3/glog.xcframework.zip", checksum: "f7a7904b456373fbd8f0b268b8997b374c4a75e9c434ccfe68474566c6d98057"),
        
    ]
)
