# ios-rn-prebuilt

[![Build and Distribute](https://github.com/wafflestudio/ios-rn-prebuilt/actions/workflows/distribute.yaml/badge.svg)](https://github.com/wafflestudio/ios-rn-prebuilt/actions/workflows/distribute.yaml)

This repository aims to alleviate some of the hurdles associated with the React Native project setup for existing iOS projects with SwiftPM, by providing a precompiled version of React Native as an xcframework. It encapsulates the React Native framework and its dependencies within an xcframework and publishes a new release whenever an update is available. This significantly simplifies the integration of React Native into existing iOS projects, allowing developers to focus more on the core functionality of their applications.

> **Note**  
> Hermes engine is intentionally disabled at the moment due to its large binary size. This decision was taken in an effort to minimize the time required to download the package. However, we have identified a potential solution to reduce Hermes's size by disabling its bitcode, thanks to [this commit](https://github.com/facebook/react-native/pull/37868/commits/06a4d86218b83d8d2ad36f41351bc3f6887021ce). As such, we plan to reintegrate Hermes into the package once the commit gets included in the release.

## Getting Started

To use the prebuilt frameworks in your iOS project, you should fetch the latest package using Swift Package Manager. You can do this by adding the following to your `Package.swift` file:

```swift
let package = Package(
    ...
    dependencies: [
        .package(url: "https://github.com/wafflestudio/ios-rn-prebuilt.git", .upToNextMajor(from: "0.72.3"))
    ],
    ...
)
```

## Automation

The ios-rn-prebuilt repository includes a GitHub workflow, defined in `distribute.yaml`, which automates the entire build and release process. This workflow is triggered daily at 12:00 UTC. It performs the following tasks:

- Check for new versions of React Native
- Set up the necessary environment (Node.js, Ruby, Xcode)
- Generate the xcframework using the `build.sh` script
- Zip the generated xcframework files
- Update the `Package.swift` file with the new URLs and checksums for the xcframeworks
- Commit, tag and push the changes to the repository
- Publish a new release containing the zipped xcframeworks

Please refer to the `distribute.yaml` file for the detailed steps involved in the workflow.

## Build Script

The `build.sh` script is used to generate the xcframework. It performs the following operations:

- It copies any existing xcframework files from the `Pods` directory to the `output` directory
- It loops through various build configurations and SDKs to build the RN project for different targets (iOS and iOS Simulator)
- It creates an xcframework from the built archives

## Contributions

We encourage developers to contribute to this repository. Whether it's reporting bugs, proposing improvements, or adding new features, your contributions are always welcome.

## License

This project is licensed under the MIT License.
