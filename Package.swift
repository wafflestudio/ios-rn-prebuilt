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
        .binaryTarget(name: "OpenSSL", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.0/OpenSSL.xcframework.zip", checksum: "3003284b269c8c8ff3d4736cbaeeed0fa1e3a528169e9bfd2c351d6b90883a13"),
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.0/ReactNativeKit-Debug.xcframework.zip", checksum: "f4ddb6f9e26ffd140875586b33a28a0c66d3fde3a26531058b97cc4e1b5d8a33"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.0/ReactNativeKit-Release.xcframework.zip", checksum: "0c89866fb56c1473676bb1f53d68fe6c9ed442cac7333ed16528897a36d3faf1"),
        .binaryTarget(name: "double-conversion", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.0/double-conversion.xcframework.zip", checksum: "215890659078db6bbeae46b877e398d3f25b89fe843238e891554431c9cc63e9"),
        .binaryTarget(name: "glog", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.0/glog.xcframework.zip", checksum: "42bb8bff8837ec79c2094cc6d3cc54c346b4041425ce8973056a771dfd82d4ba"),
        
    ]
)
