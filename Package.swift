// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SAMKeychain",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_10),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "SAMKeychain",
            targets: ["SAMKeychain"]
        )
    ],
    targets: [
        .target(
            name: "SAMKeychain",
            dependencies: [],
            path: "Sources",
            resources: [
                .copy("../Support/SAMKeychain.bundle")
            ],
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedFramework("Security"),
                .linkedFramework("Foundation")
            ]
        )
    ]
)
