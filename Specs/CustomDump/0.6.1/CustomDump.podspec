Pod::Spec.new do |s|
    s.name = 'CustomDump'
    s.version = '0.6.1'

    s.summary = "A collection of tools for debugging, diffing, and testing your application's data structures."
    s.homepage = 'https://github.com/pointfreeco/swift-custom-dump'
    s.license = { :type => 'MIT', :file => 'LICENSE' }
    s.author = 'Point-Free'
    s.source = { :git => 'https://github.com/pointfreeco/swift-custom-dump.git', :tag => s.version.to_s }
    s.swift_version = '5.5'

    s.ios.deployment_target = '13.0'
    s.osx.deployment_target = '10.15'
    s.tvos.deployment_target = '13.0'
    s.watchos.deployment_target = '6.0'

    s.source_files = 'Sources/CustomDump/**/*.swift'
    s.dependency 'XCTestDynamicOverlay', '~> 0.6.0'
    s.test_spec 'Tests' do |test_spec|
      test_spec.source_files = 'Tests/CustomDumpTests/**/*.swift'
    end
  end
