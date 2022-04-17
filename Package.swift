// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TitleBar",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "TitleBar",
            targets: ["TitleBar"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TitleBar",
            dependencies: []),
        .testTarget(
            name: "TitleBarTests",
            dependencies: ["TitleBar"]),
    ]
)
