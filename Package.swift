// swift-tools-version:5.7

import PackageDescription

let repoURL = "https://github.com/adison-ads/adison-offerwall-ios-sdk/releases/download"
let artifactVersion = "5.3.0"
let artifactName = "AdisonOfferwallSDK.zip"
let checksum = "7e550306e8ea6e0b3589347af50a381e99ed96050f1b57c808c8821de3a5394f"

let lumberjackVersion = "0.9.14"
let webVersion = "1.0.8"

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
            exact: Version(stringLiteral: lumberjackVersion)
        ),
        .package(
            url: "https://github.com/adison-ads/adison-offerwall-web",
            exact: Version(stringLiteral: webVersion)
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
