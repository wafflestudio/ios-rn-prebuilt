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
            targets: [<#releaseTargetNames#>]
        ),
        .library(
            name: "ReactNativeDevKit",
            targets: [<#debugTargetNames#>]
        )
    ],
    targets: [
        <#binaryTargets#>
    ]
)
