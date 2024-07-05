// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "openssl-apple",
    products: [
        .library(
            name: "openssl-apple",
            targets: ["openssl"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "openssl",
            url: "https://github.com/darrenallen7/openssl-apple/releases/download/3.2.107/openssl.xcframework.zip",
            checksum: "e63bd7f943eaab85c3f568008a4b71ba5cedf489156a5d0bfd9138bf0ee27fd6")
    ]
)
