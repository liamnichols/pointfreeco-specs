Pod::Spec.new do |s|
    s.name = 'IdentifiedCollections'
    s.version = '0.5.0'

    s.summary = "A library of data structures for working with collections of identifiable elements in an ergonomic, performant way."
    s.homepage = 'https://github.com/pointfreeco/swift-identified-collections'
    s.license = { :type => 'MIT', :file => 'LICENSE' }
    s.author = 'Point-Free'
    s.source = { :git => 'https://github.com/pointfreeco/swift-identified-collections.git', :tag => s.version.to_s }
    s.swift_version = '5.5'

    s.ios.deployment_target = '13.0'
    s.osx.deployment_target = '10.15'
    s.tvos.deployment_target = '13.0'
    s.watchos.deployment_target = '6.0'

    s.source_files = 'Sources/IdentifiedCollections/**/*.swift'
    s.dependency 'OrderedCollections', '~> 1.0.3'
    s.test_spec 'Tests' do |test_spec|
      test_spec.source_files = 'Tests/IdentifiedCollectionsTests/**/*.swift'
    end
  end
