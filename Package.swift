// swift-tools-version:5.7

import PackageDescription

let repoURL = "https://github.com/adison-ads/adison-offerwall-ios-sdk/releases/download"
let artifactVersion = "3.5.0"
let artifactName = "AdisonOfferwallSDK.zip"
let checksum = "81b9a212e40b32462eded923b841a1a53402b4b44c9272354fb99fbab2bbb2c3"

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
