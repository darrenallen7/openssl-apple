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
            checksum: "05fabd8a86adb86bdcbf998653f2d1bac90c2fdb9c6b8728fdd366dd6b5832e7")
    ]
)
