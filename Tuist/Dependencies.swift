//
//  Dependencies.swift
//  Config
//
//  Created by Ladislas de Toldi on 01/12/2023.
//

import ProjectDescription

let dependencies = Dependencies(
    swiftPackageManager: SwiftPackageManagerDependencies([
        .remote(
            url: "https://github.com/airbnb/lottie-ios",
            requirement: .exact("4.3.3")
        )
    ]),
    platforms: [.iOS, .macOS]
)
