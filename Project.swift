import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

/*
                +-------------+
                |             |
                |     App     | Contains TuistError App target and TuistError unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Local plugin loaded
let localHelper = LocalHelper(name: "MyPlugin")


// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project.app(name: "TuistError",
                          platform: .iOS,
                          dependencies: [
                            .external(name: "Lottie")
                          ]
                          additionalTargets: ["TuistErrorKit", "TuistErrorUI"])
