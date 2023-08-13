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
        .binaryTarget(name: "OpenSSL", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.1.3/OpenSSL.xcframework.zip", checksum: "60a9b569ac94c30c6080dd1dd23898afd1a85bc6574f188dcb7ce04f4a9f7cf3"),
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.1.3/ReactNativeKit-Debug.xcframework.zip", checksum: "e00b1233a429576f7a4bfaec38ea3873651f04945ca0b117e6fa449b351688d0"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.1.3/ReactNativeKit-Release.xcframework.zip", checksum: "002581d1582e2bcb805001a8dc60feeda5695dcbb619bffb767f8325b1981ad3"),
        .binaryTarget(name: "double-conversion", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.1.3/double-conversion.xcframework.zip", checksum: "ce9a077592223d8f3b8a061beec2eb02944c830b124c038d689fc69108af1578"),
        .binaryTarget(name: "glog", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.1.3/glog.xcframework.zip", checksum: "0268e447177eb942ff075ebae5107b1931a4203098a865e5fd8912fba013a9eb"),
        
    ]
)
