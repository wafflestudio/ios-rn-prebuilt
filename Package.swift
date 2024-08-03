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
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.18.0/ReactNativeKit-Debug.xcframework.zip", checksum: "13bb898d9ca968c6057bba18c12aa31768aec93de876fc36b9e676dd362034ec"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.18.0/ReactNativeKit-Release.xcframework.zip", checksum: "10d529118324be6396a6e2e27f3c6b7acbfaa45054994029681499b7eeb0eaea"),
        
    ]
)
