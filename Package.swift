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
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.12.0/ReactNativeKit-Debug.xcframework.zip", checksum: "5a5bf69c656a8cc396e528ce13f02f217315370f597e7123162bc5617f596512"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.12.0/ReactNativeKit-Release.xcframework.zip", checksum: "00ee1a239aba088691cdaad3b214158ec99b6b746abc4144ca84feb7c8439e41"),
        
    ]
)
