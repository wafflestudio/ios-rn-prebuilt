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
        .binaryTarget(name: "OpenSSL", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.1.2/OpenSSL.xcframework.zip", checksum: "96f8df3acc2ae46b85cc525d05b4a8eeedcd847481ec197e2e47b1d4223e7c2a"),
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.1.2/ReactNativeKit-Debug.xcframework.zip", checksum: "e8af0ac1022f8948fbcd0d1b7a3e128923eae8e1adc94cfd39463a27e4349958"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.1.2/ReactNativeKit-Release.xcframework.zip", checksum: "4d9bc697d18072a9fe9223b4e1ecfc512837b84125d7288ce2dff8cbe123274b"),
        .binaryTarget(name: "double-conversion", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.1.2/double-conversion.xcframework.zip", checksum: "f8b901309c9e1ee759477a0a62bb5307d281c89561f5f2589dc4760dd835dec3"),
        .binaryTarget(name: "glog", url: "https://github.com/wafflestudio/ios-rn-prebuilt/releases/download/0.1.2/glog.xcframework.zip", checksum: "7d653f3ab81f1d980e490f586785117a732603332e26797648fecff111999067"),
        
    ]
)
