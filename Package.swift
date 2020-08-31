// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "SwiftExtensions",
  platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)],
  products: [
    .library(
      name: "SwiftExtensions",
      targets: ["SwiftExtensions"]),
  ],
  targets: [
    .target(
      name: "SwiftExtensions"),
    .testTarget(
      name: "SwiftExtensionsTests",
      dependencies: ["SwiftExtensions"]),
  ]
)
