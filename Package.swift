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
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.9.0/ReactNativeKit-Debug.xcframework.zip", checksum: "a3d8be4215ca7cb7e3124416a92d644928368acba629126a26d6530af719a24e"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.9.0/ReactNativeKit-Release.xcframework.zip", checksum: "a2b94c060e4fa2e736bc63cf848eb1523bf5e3bf8bc168c4940c4e73f44cecfd"),
        
    ]
)
