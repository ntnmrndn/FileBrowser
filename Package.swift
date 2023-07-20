// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "FileBrowser",
  platforms: [
    .iOS(.v14)
  ],
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
      name: "FileBrowser",
      targets: ["FileBrowser"]),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    // .package(url: /* package url */, from: "1.0.0"),
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages this package depends on.
    .target(
      name: "FileBrowser",
      path: "FileBrowser",
      exclude: ["examples", "FileBrowserTests", "build.sh", "FileBrowser.podspec"],
      resources: [
        .process("./documents@2x.png"),
        .process("./files@2x.png"),
        .process("./FileBrowser.xib"),
        .process("./folder@2x.png"),
        .process("./image@2x.png"),
        .process("./pdf@2x.png"),
        .process("./zip@2x.png"),
        .process("./PreviewTransitionViewController.xib"),
        .process("./WebviewPreviewViewContoller.xib")
      ]
    )
  ],
  swiftLanguageVersions: [.v5]
)
