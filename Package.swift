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
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.10.0/ReactNativeKit-Debug.xcframework.zip", checksum: "dc114b5880981f2a439231f361453f7f594c5e88236c761e04ed68073684e86e"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.10.0/ReactNativeKit-Release.xcframework.zip", checksum: "990d9bf41c3543f524651b7cc356a199a336fedcfc9f165f2852a75a0699ab91"),
        
    ]
)
