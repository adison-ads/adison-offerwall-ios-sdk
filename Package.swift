// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdisonOfferwallSDK",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AdisonOfferwallSDK",
            targets: [
                "AdisonOfferwallSDK"
            ]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "AdisonOfferwallSDK",
            url: "https://github.com/adison-ads/adison-offerwall-ios-sdk/releases/download/3.1.48/AdisonOfferwallSDK.zip",
            checksum: "6392bed22a3bb233f3a581971b876b06c40e815734966615f0d3cdbd1a046459"
        )
    ]
)
