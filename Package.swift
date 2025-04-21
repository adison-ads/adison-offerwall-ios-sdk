// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "AdisonOfferwallSDK",
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
            url: "https://github.com/adison-ads/adison-offerwall-ios-sdk/releases/download/2.3.6/AdisonOfferwallSDK.zip",
            checksum: "bab50b893537dc67a2b5f6d8c08d7ce4b5fd1c0ffb54b2d24464d8804544c777"
        )
    ]
)
