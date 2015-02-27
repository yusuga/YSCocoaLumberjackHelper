Pod::Spec.new do |s|
  s.name = 'YSCocoaLumberjackHelper'
  s.version = '0.0.13'
  s.summary = 'CocoaLimberjack helper.'
  s.homepage = 'https://github.com/yusuga/YSCocoaLumberjackHelper'
  s.license = 'MIT'
  s.author = 'Yu Sugawara'
  s.source = { :git => 'https://github.com/yusuga/YSCocoaLumberjackHelper.git', :tag => s.version.to_s }
  s.platform = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.source_files = 'Classes/YSCocoaLumberjackHelper/*.{h,m}'
  s.requires_arc = true 
  
  s.dependency 'CocoaLumberjack', '~> 2.0.0-rc'
  s.dependency 'LumberjackConsole'
  s.dependency 'NBULog'
end