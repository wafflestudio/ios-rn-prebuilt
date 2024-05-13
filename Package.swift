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
            targets: ["ReactNativeKit-Release"]
        ),
        .library(
            name: "ReactNativeDevKit",
            targets: ["ReactNativeKit-Debug"]
        )
    ],
    targets: [
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.14.0/ReactNativeKit-Debug.xcframework.zip", checksum: "780353cc1bee972950d1fac06e529057e9c587605135e84ce1cd58c2cdbb0407"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.14.0/ReactNativeKit-Release.xcframework.zip", checksum: "a770bc3aa3f4bf53e99eb61c08645a8f113964659d53bcb7fb196faa4ef02912"),
        
    ]
)
