// swift-tools-version:5.7

import PackageDescription

let repoURL = "https://github.com/adison-ads/adison-offerwall-ios-sdk/releases/download"
let artifactVersion = "4.6.0"
let artifactName = "AdisonOfferwallSDK.zip"
let checksum = "cf4be506d6f9409db6e7e0419a9fd75225c0d330d9569370163677dd768613a2"

// MARK: - Do not change.
let package = Package(
    name: "AdisonOfferwallSDK",
    products: [
        .library(
            name: "AdisonOfferwallSDK",
            targets: [
                "AdisonOfferwallSDK",
                "AdisonOfferwallTarget"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-global-core", exact: "0.27.2"),
        .package(url: "https://github.com/adison-ads/adison-offerwall-lumberjack", exact: "0.9.10")
    ],
    targets: [
        .binaryTarget(
            name: "AdisonOfferwallSDK",
            url: repoURL + "/" + artifactVersion + "/" + artifactName,
            checksum: checksum
        ),
        .target(
            name: "AdisonOfferwallTarget",
            dependencies: [
                .product(name: "AdisonOfferwallGlobalCore", package: "adison-offerwall-global-core"),
                .product(name: "AdisonOfferwallLumberjack", package: "adison-offerwall-lumberjack")
            ],
            path: "Sources"
        )
    ]
)
