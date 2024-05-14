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
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.17.0/ReactNativeKit-Debug.xcframework.zip", checksum: "6f87d0ad20a89f5abd16ca9cf5afc22aaa42d4abe4199e51e459164c2dd56c0b"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.17.0/ReactNativeKit-Release.xcframework.zip", checksum: "d4d3c5fb9e1a6fd683dd96da52347dd0bad9c99ffaa1a8d7b66f05cd76358e6a"),
        
    ]
)
