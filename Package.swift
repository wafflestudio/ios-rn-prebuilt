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
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.20.0/ReactNativeKit-Debug.xcframework.zip", checksum: "33c21cdfd29c94de3859f81dc6082788eddc85d712201f4318fc120ea711a750"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.20.0/ReactNativeKit-Release.xcframework.zip", checksum: "390c86437251b47e938651c8b3d01f5df13c68a37959f32e13bfb8892a1e4208"),
        
    ]
)
