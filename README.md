# xcodeproj-graph

Build dependency graph for Xcode project's targets.

# Install

    brew install odnoletkov/tap/xcodeproj-graph

# Usage

```
xcodeproj-graph path/to/foo.xcodeproj
```
```
xcodeproj-graph path/to/foo.xcodeproj/project.pbxproj
```
```
cd path/to/project
xcodeproj-graph
```

# TODO

* Configurable output modes (print .dot file, save .dot file etc.)
* Show meta info about targets in nodes (such as target type)
* Indicate external targets (coming from included project files or as implicit dependencies from Xcode workspace)
* Load and display hierarchies for external targets (from included projects or workspace)
