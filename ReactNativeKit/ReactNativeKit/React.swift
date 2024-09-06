@_implementationOnly import React
import Foundation
import UIKit

/// Creates and returns a UIView configured with a React Native application.
/// - Parameters:
///   - bundleURL: The URL to the JavaScript bundle file that should be loaded in the React Native application.
///   - moduleName: The name of the React Native module that should be run. This should correspond to a registered React Native module in your JavaScript bundle.
///   - initialProperties: The initial properties that should be passed to the React Native module. These are made available in the React Native application via this.props.
///   - backgroundColor: The background color for the React Native View. Default is .clear.
/// - Returns: A UIView configured to run the specified React Native application.
@MainActor
public func makeReactView(
    bundleURL: URL,
    moduleName: String,
    initialProperties: [AnyHashable: Any]?,
    backgroundColor: UIColor = .clear
) -> UIView
{
    let rootView = RCTRootView(bundleURL: bundleURL, moduleName: moduleName, initialProperties: initialProperties)
    rootView.backgroundColor = backgroundColor
    return rootView
}
