// swift-tools-version:5.7

import PackageDescription

let repoURL = "https://github.com/adison-ads/adison-offerwall-ios-sdk/releases/download"
let artifactVersion = "3.4.0-beta4"
let artifactName = "AdisonOfferwallSDK.zip"
let checksum = "734078656e8d9385cb5b2ef8acbdb92d11068abcab5e02760c223e0318929791"

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
