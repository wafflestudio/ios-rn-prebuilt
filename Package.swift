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
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.15.0/ReactNativeKit-Debug.xcframework.zip", checksum: "96b526f4c81c4dbd00d01329d52f421de5810643dd549127691c1f5c4891a906"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.15.0/ReactNativeKit-Release.xcframework.zip", checksum: "f40cce71a633883279dda7a5898a250328058f72d89e124d61bdfa7552ec7620"),
        
    ]
)
