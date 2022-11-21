Pod::Spec.new do |s|
    s.name = 'SnapshotTesting'
    s.version = '1.10.0'

    s.summary = "Delightful Swift snapshot testing."
    s.homepage = 'https://github.com/pointfreeco/swift-snapshot-testing'
    s.license = { :type => 'MIT', :file => 'LICENSE' }
    s.author = 'Point-Free'
    s.source = { :git => 'https://github.com/pointfreeco/swift-snapshot-testing.git', :tag => s.version.to_s }
    s.swift_version = '5.5'

    s.ios.deployment_target = '13.0'
    s.osx.deployment_target = '10.15'
    s.tvos.deployment_target = '13.0'

    s.source_files = 'Sources/SnapshotTesting/**/*.swift'
    s.weak_framework = "XCTest"
    s.pod_target_xcconfig = {
      'ENABLE_TESTING_SEARCH_PATHS' => 'YES',
      'OTHER_LDFLAGS' => '$(inherited) -weak-lXCTestSwiftSupport -Xlinker -no_application_extension',
    }
    s.test_spec 'Tests' do |test_spec|
      test_spec.source_files = 'Tests/SnapshotTestingTests/**/*.swift'
    end
  end
