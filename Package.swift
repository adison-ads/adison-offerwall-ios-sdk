// swift-tools-version:5.7

import PackageDescription

let repoURL = "https://github.com/adison-ads/adison-offerwall-ios-sdk/releases/download"
let artifactVersion = "3.17.4"
let artifactName = "AdisonOfferwallSDK.zip"
let checksum = "e1850e38a6f118eb90d4366f34597eba5f80a15beb0dc6778bc300cfde76396f"

let lumberjackVersion = "0.9.14"

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
                .product(name: "AdisonOfferwallLumberjack", package: "adison-offerwall-lumberjack")
            ],
            path: "Sources"
        )
    ]
)
