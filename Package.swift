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
    targets: [
        .target(name: "SemConv"),
        .testTarget(
            name: "SemConvTests",
            dependencies: ["SemConv"]
        ),
    ]
)
