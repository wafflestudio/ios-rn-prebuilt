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
            targets: ["OpenSSL","ReactNativeKit-Release","double-conversion","glog"]
        ),
        .library(
            name: "ReactNativeDevKit",
            targets: ["OpenSSL","ReactNativeKit-Debug","double-conversion","glog"]
        )
    ],
    targets: [
        .binaryTarget(name: "OpenSSL", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.4.0/OpenSSL.xcframework.zip", checksum: "e4d73c7d0d38dcc2f2f11b624bb060641fa452f9e120191065309e5b822a2ebd"),
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.4.0/ReactNativeKit-Debug.xcframework.zip", checksum: "3a7dd8843ece6ae8600053dd05c69769973724317fd7b134e208ce4c2a56219c"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.4.0/ReactNativeKit-Release.xcframework.zip", checksum: "9b948ba2266c76d2c33782c994f907d82ea94e4c0be8c1df5e40d1b6086f58a6"),
        .binaryTarget(name: "double-conversion", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.4.0/double-conversion.xcframework.zip", checksum: "06da21540152a21cb92eb513c0b31b173377612622f5c7dc8f0adc1408e95a2b"),
        .binaryTarget(name: "glog", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.4.0/glog.xcframework.zip", checksum: "1bb97d17230cf40475ff286c58ba4ccf3630e7fa387faecc431477a51d421736"),
        
    ]
)
