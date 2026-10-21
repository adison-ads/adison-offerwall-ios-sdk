// swift-tools-version:5.7

// swift-format-ignore-file

import PackageDescription

let repoURL = "https://github.com/adison-ads/adison-offerwall-ios-sdk/releases/download"
let artifactVersion = "5.4.4"
let artifactName = "AdisonOfferwallSDK.zip"
let checksum = "d5766a63cdfb71ad5ce1245b79b06a0b4b37a12ee271792eae7d45ce807de046"

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
