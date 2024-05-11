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
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.11.0/ReactNativeKit-Debug.xcframework.zip", checksum: "75ce4a0a40209abd76dd7e49d07303bf1e600fe84068ba6cfecec0ac2863e809"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.11.0/ReactNativeKit-Release.xcframework.zip", checksum: "15da0206fa9820aa49bfbf7ee3d95d2749662994ed4762dcb90834062e1345a2"),
        
    ]
)
