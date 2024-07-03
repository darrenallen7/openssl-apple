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
            checksum: "553d1b368d4a4f1f45b859f828a5538a7b9977525a0bee0e12839525c9264ed7")
    ]
)
