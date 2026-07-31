// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "NHNetworkTime",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "NHNetworkTime", targets: ["NHNetworkTime"])
    ],
    dependencies: [
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket", exact: "7.6.5")
    ],
    targets: [
        .target(
            name: "NHNetworkTime",
            dependencies: [
                .product(name: "CocoaAsyncSocket", package: "CocoaAsyncSocket")
            ],
            path: "NHNetworkTime",
            publicHeadersPath: "include"
        )
    ]
)
