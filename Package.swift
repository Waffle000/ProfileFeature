// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ProfileFeature",
    platforms: [
        .iOS(.v17), .macOS(.v14)
    ],
    products: [
     
        .library(
            name: "ProfileFeature",
            targets: ["ProfileFeature"]),
    ],
    targets: [
      
        .target(
            name: "ProfileFeature",
            path: "Sources",
            resources: [.process("Resources")]),
        .testTarget(
            name: "ProfileFeatureTests",
            dependencies: ["ProfileFeature"]),
    ]
)
