
Pod::Spec.new do |s|
  s.name             = 'HLExtension'
  s.version          = '0.1.2'
  s.summary          = 'Make some extension that is used different project.'
  s.description      = <<-DESC
Yah. Make some extension that is used different project.
                       DESC
  s.homepage         = 'https://github.com/hieule1607/HLExtension'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hieule1607' => 'hieule1607@gmail.com' }
  s.source           = { :git => 'https://github.com/hieule1607/HLExtension.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'HLExtension/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HLExtension' => ['HLExtension/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
