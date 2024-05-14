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
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.16.0/ReactNativeKit-Debug.xcframework.zip", checksum: "63ef6903315a2b2d35020f62889f4273c9bf0d636a76d0ded37b20007492d3b9"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.16.0/ReactNativeKit-Release.xcframework.zip", checksum: "cf8f79975ff653715a52129cf9191e10e4f44aed583bd680c217b0736a25e9c6"),
        
    ]
)
