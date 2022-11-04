Pod::Spec.new do |s|
  s.name = 'XCTestDynamicOverlay'
  s.version = '0.6.0'

  s.summary = 'Define XCTest assertion helpers directly in your application and library code.'
  s.homepage = 'https://github.com/pointfreeco/xctest-dynamic-overlay'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = 'Point-Free'
  s.source = { :git => 'https://github.com/pointfreeco/xctest-dynamic-overlay.git', :tag => s.version.to_s }
  s.swift_version = '5.5'

  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.tvos.deployment_target = '13.0'
  s.watchos.deployment_target = '6.0'

  s.source_files = 'Sources/XCTestDynamicOverlay/**/*.swift'
  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'Tests/XCTestDynamicOverlayTests/**/*.swift'
  end

  s.prepare_command = <<-CMD
                        sed -i '' 's/XCTestDynamicOverlayTests/XCTestDynamicOverlay_Unit_Tests/g' Tests/XCTestDynamicOverlayTests/UnimplementedTests.swift
                      CMD

end
