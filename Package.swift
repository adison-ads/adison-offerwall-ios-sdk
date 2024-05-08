// swift-tools-version:5.7

import PackageDescription

let repoURL = "https://github.com/adison-ads/adison-offerwall-ios-sdk/releases/download"
let artifactVersion = "3.6.2"
let artifactName = "AdisonOfferwallSDK.zip"
let checksum = "835fd8c6a6d5f0145fb1afa5aec0ed9b0989f1be1e56a19a80bca95464fb305a"

// MARK: - Do not change.
let package = Package(
    name: "AdisonOfferwallSDK",
    products: [
        .library(
            name: "AdisonOfferwallSDK",
            targets: [
                "AdisonOfferwallSDK"
            ]
        )
    ],
    dependencies: [

    ],
    targets: [
        .binaryTarget(
            name: "AdisonOfferwallSDK",
            url: repoURL + "/" + artifactVersion + "/" + artifactName,
            checksum: checksum
        )
    ]
)
