Pod::Spec.new do |s|
    s.name = 'CombineSchedulers'
    s.version = '0.9.1'

    s.summary = "⏰ A few schedulers that make working with Combine more testable and more versatile."
    s.homepage = 'https://github.com/pointfreeco/combine-schedulers'
    s.license = { :type => 'MIT', :file => 'LICENSE' }
    s.author = 'Point-Free'
    s.source = { :git => 'https://github.com/pointfreeco/combine-schedulers.git', :tag => s.version.to_s }
    s.swift_version = '5.5'

    s.ios.deployment_target = '13.0'
    s.osx.deployment_target = '10.15'
    s.tvos.deployment_target = '13.0'
    s.watchos.deployment_target = '6.0'

    s.source_files = 'Sources/CombineSchedulers/**/*.swift'
    s.dependency 'XCTestDynamicOverlay', '~> 0.6.0'
    s.test_spec 'Tests' do |test_spec|
      test_spec.source_files = 'Tests/CombineSchedulersTests/**/*.swift'
    end
  end
