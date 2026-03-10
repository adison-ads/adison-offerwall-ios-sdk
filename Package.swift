// swift-tools-version:5.7

import PackageDescription

let repoURL = "https://github.com/adison-ads/adison-offerwall-ios-sdk/releases/download"
let artifactVersion = "5.1.6"
let artifactName = "AdisonOfferwallSDK.zip"
let checksum = "b712acf490178027fd014e1af9846ad40a35bd25e73a431617e532eb28979d93"

let lumberjackVersion = "0.9.14"
let webVersion = "1.0.2"

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
