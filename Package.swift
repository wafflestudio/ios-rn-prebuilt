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
        .binaryTarget(name: "OpenSSL", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.1.1/OpenSSL.xcframework.zip", checksum: "d7431cf1cf201abba8c55ef0f91f1506fc744d5f14943c5ae4c41a74976cb146"),
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.1.1/ReactNativeKit-Debug.xcframework.zip", checksum: "a58c5dab7e2108f2aa7b03c85dfcbe0f1e8b9e3a8f9b7ecdb2bc40caf1b330a9"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.1.1/ReactNativeKit-Release.xcframework.zip", checksum: "472d0f37a38719f1eda1c7fd611f72b0c8008a328aafcdde51b6e929d2264be9"),
        .binaryTarget(name: "double-conversion", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.1.1/double-conversion.xcframework.zip", checksum: "2acb9acbb8b440bddc9afa97c42f696851c182f592c2bb349ca7ab6543563bb9"),
        .binaryTarget(name: "glog", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.1.1/glog.xcframework.zip", checksum: "e673e69e965fb6036b5619f802de6affdc5d0df7277b48217169ea53fe8bfcdb"),
        
    ]
)
