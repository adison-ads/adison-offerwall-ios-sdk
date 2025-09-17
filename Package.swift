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
            url: "https://github.com/adison-ads/adison-offerwall-ios-sdk/releases/download/2.3.8/AdisonOfferwallSDK.zip",
            checksum: "e368709068e02b088df6db38648aa1ffc91ab813ce41e1fa9507a3b38167148f"
        )
    ]
)
