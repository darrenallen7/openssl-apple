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
            checksum: "8b8cf3dc4bc843d802736f6d7d8b1912b5dad44a213627086b152d50c533ba9c")
    ]
)
