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
            checksum: "701e156f1903e7967459cbf3553297b5f2922f32d803235e2cc0751a0a2a18d3")
    ]
)
