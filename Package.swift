// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "app",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", .branch("master")),
        .package(url: "https://github.com/vapor/fluent.git", .branch("master")),
        .package(url: "https://github.com/vapor/fluent-postgresql.git", .branch("master")),
    ],
    targets: [
        .target(name: "App", dependencies: ["Fluent", "FluentPostgresDriver", "Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)
