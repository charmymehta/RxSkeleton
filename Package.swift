// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "RxSkeleton",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(name: "RxSkeleton", targets: ["RxSkeleton"]),
    ],
    dependencies: [
        .package(url: "https://github.com/RxSwiftCommunity/RxDataSources.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/Juanpe/SkeletonView.git", from: "1.7.0")
    ],
    targets: [
        .target(name: "RxSkeleton", dependencies: ["RxDataSources", "SkeletonView"])
    ],
    swiftLanguageVersions: [.v5]
)
