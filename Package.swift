// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftLambdaSample",
    platforms: [
        .macOS(.v10_13),
    ],
    products: [
        .executable(name: "SwiftLambdaSample", targets: ["SwiftLambdaSample"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-server/swift-aws-lambda-runtime.git", from: "0.1.0"),
    ],
    targets: [
        .target(
            name: "SwiftLambdaSample",
            dependencies: [
                .product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime"),
            ]
        ),
        .testTarget(
            name: "SwiftLambdaSampleTests",
            dependencies: ["SwiftLambdaSample"]),
    ]
)
