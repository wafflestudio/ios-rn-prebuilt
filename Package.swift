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
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.21.0/ReactNativeKit-Debug.xcframework.zip", checksum: "3d0889f2fe56f1da8d259f1608ab38898cc5267a9699b41206f767a584372131"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.21.0/ReactNativeKit-Release.xcframework.zip", checksum: "baff3c813fde93ef04684f17b92d5eacb3acbb016eacb199b8b79f801c00694c"),
        
    ]
)
