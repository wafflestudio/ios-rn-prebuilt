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
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.8.0/ReactNativeKit-Debug.xcframework.zip", checksum: "2feb7062ac07cf850ff686a296c69dc6832c4e20a370102ff1571321dcc12a04"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.8.0/ReactNativeKit-Release.xcframework.zip", checksum: "7de3e0d994d1085ba196951c1295f718c2111a84ba706985d7ae3db8d8915acb"),
        
    ]
)
