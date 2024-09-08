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
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.22.0/ReactNativeKit-Debug.xcframework.zip", checksum: "b5cddc835a3f89a53cba7d5d6fef3dab1d4510b4fd17749ef7f3bc378c8783b8"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.22.0/ReactNativeKit-Release.xcframework.zip", checksum: "0aa0e92f955634aec76de3d02c0365582641560b7372e61120b966d0e18246a0"),
        
    ]
)
