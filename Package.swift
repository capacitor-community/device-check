// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorCommunityDeviceCheck",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorCommunityDeviceCheck",
            targets: ["CapacitorDeviceCheckPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "CapacitorDeviceCheckPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/CapacitorDeviceCheckPlugin"),
        .testTarget(
            name: "CapacitorDeviceCheckPluginTests",
            dependencies: ["CapacitorDeviceCheckPlugin"],
            path: "ios/Tests/CapacitorDeviceCheckPluginTests")
    ]
)
