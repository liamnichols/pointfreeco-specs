# Point-Free Specs

[**Point-Free**](https://github.com/pointfreeco/) offer some really great packages, but they're only officially available using Swift Package Manager. While this is great for modern projects, this is a blocker for larger projects that still rely on CocoaPods and that don't want to bring in the burden of managing two different sources for dependencies.

If you want to use **Point-Free** packages, but want to do so using CocoaPods, this Specs repository is for you!

```ruby
source 'https://github.com/liamnichols/pointfreeco-specs'
source 'https://github.com/liamnichols/swift-collections-specs' # Only required for IdentifiedCollections

target 'Global' do
  pod 'CombineSchedulers', '~> 0.9.1'     # https://github.com/pointfreeco/combine-schedulers
  pod 'CustomDump', '~> 0.6.1'            # https://github.com/pointfreeco/swift-custom-dump
  pod 'IdentifiedCollections', '~> 0.5.0' # https://github.com/pointfreeco/swift-identified-collections
  pod 'XCTestDynamicOverlay', '~> 0.6.0'  # https://github.com/pointfreeco/xctest-dynamic-overlay
  pod 'SnapshotTesting', '~> 0.6.1' # https://github.com/pointfreeco/swift-snapshot-testing
end
```

## Why an entire Specs repository?

Swift Package Manager and CocoaPods work in different ways. A Swift Package can provide multiple products each as individual targets however whereas a CocoaPods Podspec can only represent a single target, even if you consider the Subspecs feature.

Library maintainers who offer support for both Swift Package Manager and CocoaPods often do so by making compromises so that their repository is setup to work with both package managers efficiently.

Because the **Point-Free** packages aren't built with CocoaPods Subspecs in mind, we need to expose multiple Pods for each target in the project, some with dependencies on each other. Additionally, I don't want to push these pods to the CocoaPods trunk because I didn't author the actual library and without pushing them some kind of specs repo, you cannot define the dependencies correctly.

Putting it all together, I decided that the best approach here is to use a custom specs repo instead. It's easy for me to manage, and it makes it relatively straightforward to use in your projects as well.

## Available Pods

In this specs repository, each Pod defines a target from across one of the many Point-Free libraries. You can find the complete list below:

- **CombineSchedulers** ([combine-schedulers](https://github.com/pointfreeco/combine-schedulers))
  - 0.9.1
- **CustomDump** ([swift-custom-dump](https://github.com/pointfreeco/swift-custom-dump))
  - 0.6.1
- **IdentifiedCollections** ([swift-identified-collections](https://github.com/pointfreeco/swift-identified-collections))
  - 0.5.0
- **XCTestDynamicOverlay** ([xctest-dynamic-overlay](https://github.com/pointfreeco/xctest-dynamic-overlay))
  - 0.6.0
- **SnapshotTesting** ([swift-snapshot-testing](https://github.com/pointfreeco/swift-snapshot-testing))

## Issues

Feel free to raise issues in this repository however please note that I am only able to help with issues relating to the CocoaPods specific configuration.

If you have an issue with the packages themselves, you are better off raising an issue in their respective repository.
