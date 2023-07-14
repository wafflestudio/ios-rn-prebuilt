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
        .binaryTarget(name: "OpenSSL", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/v0.72.3/OpenSSL.xcframework.zip", checksum: "adb510e3fac3a121124d237ab5f71e8990fefe12824856ba7fb0083fe11717d2"),
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/v0.72.3/ReactNativeKit-Debug.xcframework.zip", checksum: "f73f109e8c75b0432b5e49270264c691d72230fcb932632ab7ca99fdabaf9e2e"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/v0.72.3/ReactNativeKit-Release.xcframework.zip", checksum: "9725a4c8a1c9a265873059ddd0c1edc04c73cfdf1fb589cb21e8cd7b7b63ca60"),
        .binaryTarget(name: "double-conversion", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/v0.72.3/double-conversion.xcframework.zip", checksum: "4316ef402a004da87a1f0fff34e2614228964f8a74811327c0338922af95005d"),
        .binaryTarget(name: "glog", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/v0.72.3/glog.xcframework.zip", checksum: "630c5ae226270526b565522174b558fc80e24109bc449c32f923b6d4ee51feaf"),
        
    ]
)
