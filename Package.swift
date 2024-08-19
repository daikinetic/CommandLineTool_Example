// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CommandLineTool",
    dependencies: [
      .package(
        url: "https://github.com/johnsundell/files.git",
        from: "4.2.0"
      )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
          name: "CommandLineTool",
          dependencies: ["CommandLineToolCore"]
        ),
        .target(
          name: "CommandLineToolCore",
          dependencies: [
            .product(name: "Files", package: "files")
          ]
        ),
        .testTarget(
          name: "CommandLineToolTests",
          dependencies: [
            "CommandLineToolCore",
            .product(name: "Files", package: "files")
          ]
        )
    ]
)
