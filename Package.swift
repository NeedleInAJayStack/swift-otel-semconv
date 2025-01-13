// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SemConv",
    products: [
        .library(
            name: "SemConv",
            targets: ["SemConv"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-distributed-tracing.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "SemConv",
            dependencies: [
                .product(name: "Tracing", package: "swift-distributed-tracing"),
            ]
        ),
        .testTarget(
            name: "SemConvTests",
            dependencies: ["SemConv"]
        ),
    ]
)
