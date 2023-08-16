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
        .binaryTarget(name: "OpenSSL", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.2/OpenSSL.xcframework.zip", checksum: "83b3aa7aa519a3dd4e6bced43280c1780f09b5d1e47409b70f989a5378886a1b"),
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.2/ReactNativeKit-Debug.xcframework.zip", checksum: "edff78866951ea4eef9004c7520f31f48a9735bb4c5aa728208402ba5c7cb0c3"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.2/ReactNativeKit-Release.xcframework.zip", checksum: "cc7d0f7f03bf1cffc30f05192a2cf5af48258dee9c5ca539c65d852f0e13b847"),
        .binaryTarget(name: "double-conversion", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.2/double-conversion.xcframework.zip", checksum: "52569922b1ba8160080bd54a8132fae5003f6f8622822265f0fda889b90f7f81"),
        .binaryTarget(name: "glog", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.2/glog.xcframework.zip", checksum: "315b19c107980617fc83339edf43537ae235eaa319565ded29171162ee62b720"),
        
    ]
)
