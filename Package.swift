// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "AdisonOfferwallSDK",
    platforms: [
    ],
    products: [
        .library(
            name: "AdisonOfferwallSDK",
            targets: [
                "AdisonOfferwallSDK",
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "AdisonOfferwallSDK",
            url: "https://github.com/adison-ads/adison-offerwall-ios-sdk/releases/download/3.11.0/AdisonOfferwallSDK.zip",
            checksum: ""
        )
    ]
)
