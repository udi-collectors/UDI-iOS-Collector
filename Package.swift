// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UDICollectorSDK",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "UDICollectorSDK",
            targets: ["UDICollectorBinaryLocal"]
        )
    ],
    targets: [
//        .binaryTarget(
//            name: "UDICollectorBinaryRemote",
//            url: "https://artifactory-mars.cd.genesaas.io/artifactory/device-collector-releases/com/udicollector/ios-collector/1.2.1/ios-collector-1.2.1-ios-lib.zip", // Replace with actual URL during build
//            checksum: "e7aeca45b7faf21cf205400d8d57207e4f0091d77ad05352cf259b0a2c0f8e9b" // Replace with actual checksum during build
//        )
        // ,
         .binaryTarget(
             name: "UDICollectorBinaryLocal",
             url: "https://github.com/udi-collectors/UDI-iOS-Collector.git/releases/download/1.0.0/ios-collector-ios-lib.zip",
             checksum: "e653b50e7487fb0459c832235ea9ce23f325fb151ba975e2a1e1416d2059a464"
         )
    ],
    swiftLanguageModes: [.v5]
)
