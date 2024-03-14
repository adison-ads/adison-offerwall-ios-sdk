// swift-tools-version:5.7

import PackageDescription

let repoURL = "https://github.com/adison-ads/adison-offerwall-ios-sdk/releases/download"
let artifactVersion = "3.4.0-beta2"
let artifactName = "AdisonOfferwallSDK.zip"
let checksum = "eff0118f364398d34aacf8580bb4789a391d3187dc59fbbdc861ca4f24b95f1d"

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
