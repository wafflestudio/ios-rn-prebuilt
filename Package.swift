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
        .binaryTarget(name: "OpenSSL", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.3.0/OpenSSL.xcframework.zip", checksum: "2cc4f3f066049cb3c916a695c2949038b73477779dd6c6c33e5fb4a77257c5d0"),
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.3.0/ReactNativeKit-Debug.xcframework.zip", checksum: "451836eaff65939d2462e297969107f4d189c9a827bafb9c6a694b072220d7fe"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.3.0/ReactNativeKit-Release.xcframework.zip", checksum: "3846e80e571f045fae009b6e12f60d390ffe322ff2ff1904b1b8a356063c8ca7"),
        .binaryTarget(name: "double-conversion", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.3.0/double-conversion.xcframework.zip", checksum: "b8686593258f6130b6d9b2ad0d8130023d23550c41749377d4e284ea750da0a9"),
        .binaryTarget(name: "glog", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.3.0/glog.xcframework.zip", checksum: "36b0ada4e2f9388127e29f87495e5f692a4bcd326ed5afba2b9b197b1b04a307"),
        
    ]
)
