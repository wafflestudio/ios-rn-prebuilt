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
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.7.0/ReactNativeKit-Debug.xcframework.zip", checksum: "2986b5805dbc218ebb9389dfef91cb57116f3ca2c66ed4f9a31ca85ec9b0decb"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.7.0/ReactNativeKit-Release.xcframework.zip", checksum: "92a255527d926583563818013057afbedcd01d233266b959eea2e1f330eb2513"),
        
    ]
)
