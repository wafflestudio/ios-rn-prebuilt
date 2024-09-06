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
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.19.0/ReactNativeKit-Debug.xcframework.zip", checksum: "40e3fe09ac9b7d39f0940f2ed39416f4fa28f684e9d8e617dd23c9dd49a3eb60"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.19.0/ReactNativeKit-Release.xcframework.zip", checksum: "82b5c4254e8343024f08ef58eda63e4608aedf2f3ae9c44f40f16455d56c66ce"),
        
    ]
)
