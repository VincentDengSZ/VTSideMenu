
Pod::Spec.new do |s|
  s.name             = "VTSideMenu"
  s.version          = "1.0.0"
  s.summary          = "A simple sideMenu lib for iOS , support Objective-C and Swift."
  s.description      = <<-DESC
                       It is a sideMenu view used on iOS, which implement by Objective-C and Swift.
                       DESC
  s.homepage         = "https://github.com/VincentDengSZ/VTSideMenu"
  s.license          = 'MIT'
  s.author           = { 'VincentDeng' => 'VincentDeng@4dxm.com' }
 s.source = { :git => 'https://github.com/VincentDengSZ/VTSideMenu.git', :tag => s.version.to_s }

  s.platform     = :ios, '10'
  # s.ios.deployment_target = '10'
  # s.osx.deployment_target = '10.12'
  s.requires_arc = true

  s.source_files = 'VTSideMenu/*'
  # s.resources = 'Assets'

  # s.ios.exclude_files = 'Classes/osx'
  # s.osx.exclude_files = 'Classes/ios'
  # s.public_header_files = 'Classes/**/*.h'
  s.frameworks = 'Foundation', 'UIKit'
   s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }

end
