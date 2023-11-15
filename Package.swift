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
        .binaryTarget(name: "OpenSSL", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.5.0/OpenSSL.xcframework.zip", checksum: "55eea9ec02a020bf00410a586d13cafab2c7e4f98bebe7225a1f36e4fe7ff5b8"),
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.5.0/ReactNativeKit-Debug.xcframework.zip", checksum: "dc2e2247c885c7b8cc1eee8180d1352f87091255481c7bf8b81967cfef9e7a82"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.5.0/ReactNativeKit-Release.xcframework.zip", checksum: "fe2999577115d936420ef35f1c3b380c3c363df412e844e5845ba526964cedce"),
        .binaryTarget(name: "double-conversion", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.5.0/double-conversion.xcframework.zip", checksum: "bbeff3e7c54ebfa9095a325bff8861d1b018d30dd5a127644f2f385a3faf718b"),
        .binaryTarget(name: "glog", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.5.0/glog.xcframework.zip", checksum: "84b4675865c29a08e41c75047e204761a0178fb90017131f1615617bfe038372"),
        
    ]
)
