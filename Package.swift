// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pokemon_domain",
    platforms: [
        .iOS(.v26),
        .macOS(.v15),
        .tvOS(.v18),
        .watchOS(.v11),
        .visionOS(.v2)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "pokemon_domain",
            targets: ["pokemon_domain"]
        ),
    ],
    dependencies: [
        // If pokemon_shared is a local package in your workspace, adjust the path accordingly.
        .package(name: "pokemon_shared", path: "../pokemon_shared"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "pokemon_domain",
            dependencies: [
                .product(name: "pokemon_shared", package: "pokemon_shared")
            ]
        ),
        .testTarget(
            name: "pokemon_domainTests",
            dependencies: ["pokemon_domain"]
        ),
    ]
)
