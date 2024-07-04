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
                path: "opensslWrapper",
                resources: [.copy("PrivacyInfo.xcprivacy")]
               ),
        .binaryTarget(
            name: "openssl",
            url: "https://github.com/darrenallen7/openssl-apple/releases/download/3.2.107/openssl.xcframework.zip",
            checksum: "065886c310d833bead5ed96d0bb8e7f6a05777ad2efd54b5cc90bb8e0cf35e4c")
    ]
)
