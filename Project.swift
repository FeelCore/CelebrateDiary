import ProjectDescription

let project = Project(
    name: "CelebrateDiary",
    targets: [
        .target(
            name: "CelebrateDiary",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.CelebrateDiary",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            buildableFolders: [
                "CelebrateDiary/Sources",
                "CelebrateDiary/Resources",
            ],
            dependencies: []
        ),
        .target(
            name: "CelebrateDiaryTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dev.tuist.CelebrateDiaryTests",
            infoPlist: .default,
            buildableFolders: [
                "CelebrateDiary/Tests"
            ],
            dependencies: [.target(name: "CelebrateDiary")]
        ),
    ]
)
