// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "SwiftExtensions",
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