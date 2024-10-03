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
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.23.0/ReactNativeKit-Debug.xcframework.zip", checksum: "a503b02d84e776185e2af827b9283fa2a1bb61e4f3971c25c1d8a9243acbdf07"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.23.0/ReactNativeKit-Release.xcframework.zip", checksum: "41e5deb537d41e609e0d4c841ac50f807927abccf72d85424434d05a3bf6ccea"),
        
    ]
)
