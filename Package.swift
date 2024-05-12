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
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.13.0/ReactNativeKit-Debug.xcframework.zip", checksum: "5df846dda2f3f1610f02b241fbfcf6ebd7a0e3ed4d8891551c7f642fed887520"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.13.0/ReactNativeKit-Release.xcframework.zip", checksum: "789b8ae836bf9f79d5625a70c2e0b09c26babb39a183ce1099ea6c07d8dc894d"),
        
    ]
)
