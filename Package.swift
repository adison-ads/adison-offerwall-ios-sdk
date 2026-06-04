// swift-tools-version:5.7

import PackageDescription

let repoURL = "https://github.com/adison-ads/adison-offerwall-ios-sdk/releases/download"
let artifactVersion = "4.8.0"
let artifactName = "AdisonOfferwallSDK.zip"
let checksum = "0a2917748885f658514687dc670e8e8cb09da803cfd6bbcd2614bc4928363f14"

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
        .package(url: "https://github.com/adison-ads/adison-offerwall-global-core", exact: "1.2.0"),
        .package(url: "https://github.com/adison-ads/adison-offerwall-lumberjack", exact: "0.9.14")
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
