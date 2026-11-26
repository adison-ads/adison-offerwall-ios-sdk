// swift-tools-version:5.7

// swift-format-ignore-file

import PackageDescription

let repoURL = "https://github.com/adison-ads/adison-offerwall-ios-sdk/releases/download"
let artifactVersion = "5.5.2"
let artifactName = "AdisonOfferwallSDK.zip"
let checksum = "7761e0d97ef1a1d383c6fef742d7a6fb6311be95d46dca17efc73f1d89051ea5"

// MARK: - Do not change.
let package = Package(
    name: "AdisonOfferwallSDK",
    products: [
        .library(
            name: "AdisonOfferwallSDK",
            targets: [
                "AdisonOfferwallSDK",
                "AdisonOfferwallSDKTarget"
            ]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/adison-ads/adison-offerwall-lumberjack",
            from: "0.9.14"
        ),
        .package(
            url: "https://github.com/adison-ads/adison-offerwall-web",
            from: "1.1.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "AdisonOfferwallSDK",
            url: repoURL + "/" + artifactVersion + "/" + artifactName,
            checksum: checksum
        ),
        .target(
            name: "AdisonOfferwallSDKTarget",
            dependencies: [
                .product(name: "AdisonOfferwallLumberjack", package: "adison-offerwall-lumberjack"),
                .product(name: "AdisonOfferwallWeb", package: "adison-offerwall-web"),
            ],
            path: "Sources"
        )
    ]
)
