// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "openssl-apple",
    products: [
        .library(
            name: "openssl-apple",
            targets: ["opensslWrapper"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "opensslWrapper",
                dependencies: [
                    "openssl",
                ],
                resources: [.process("Resources/PrivacyInfo.xcprivacy")]
               ),
        .binaryTarget(
            name: "openssl",
            url: "https://github.com/darrenallen7/openssl-apple/releases/download/3.2.107/openssl.xcframework.zip",
            checksum: "fa8b740388b478c3a124a60d1543322d3b322fcab219b6e5fcbcb4b26b7d51ad")
    ]
)
