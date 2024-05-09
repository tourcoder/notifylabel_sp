// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NotifyLabel",
    platforms: [
        .iOS(.v13), // Adjust the version according to your project's requirements
    ],
    products: [
        .library(
            name: "NotifyLabel",
            targets: ["NotifyLabel"]
        ),
    ],
    targets: [
        .target(
            name: "NotifyLabel",
            dependencies: []
        ),
        .testTarget(
            name: "NotifyLabelTests",
            dependencies: ["NotifyLabel"]
        ),
    ]
)
