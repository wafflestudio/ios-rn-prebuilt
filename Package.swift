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
        .binaryTarget(name: "OpenSSL", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.3/OpenSSL.xcframework.zip", checksum: "11d5f248f78f5128ccd3dce370dc2971ff70bb6f84b97dfcb08e546f3d73380b"),
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.3/ReactNativeKit-Debug.xcframework.zip", checksum: "9416827ff483d0d16ae2d50c50be9082272fd2fa34bfb8dea16944ef02c7f57b"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.3/ReactNativeKit-Release.xcframework.zip", checksum: "44d21102ed9dbeaeb89ce34caea45edf78cfe8cb1914222798a6cede465ed90e"),
        .binaryTarget(name: "double-conversion", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.3/double-conversion.xcframework.zip", checksum: "97ced639ca46083814cb77676809b8ce167e15d91646e0625f6821e2100490b2"),
        .binaryTarget(name: "glog", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.2.3/glog.xcframework.zip", checksum: "6eac0aea61378efac0a47d7a04599416e2c08af471cab7dde8c1a6dd6be382d3"),
        
    ]
)
