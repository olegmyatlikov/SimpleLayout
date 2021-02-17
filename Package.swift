// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SimpleLayout",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "SimpleLayout",
                 targets: ["SimpleLayout"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "SimpleLayout",
                dependencies: [],
                path: "Sources")
    ]
)
