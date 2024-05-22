Pod::Spec.new do |s|
  s.name             = 'Target_FFBaseLabelCustomTest' 
  s.version          = '1.0.3'
  s.summary          = 'test Target_FFBaseLabel.'
  s.description      = 'test Target_FFBaseLabel...'
  
  s.homepage         = 'https://github.com/fanfang01/Target_FFBaseLabel.git'
  s.license          = "MIT"
  s.author           = { 'Tracy Fan' => '375747625@qq.com' }

  s.source           = { :git => 'https://github.com/fanfang01/Target_FFBaseLabel.git', :tag => '1.0.3' }
  
  s.requires_arc = true
  s.ios.deployment_target = '12.0'

  # 对于iOS平台的动态框架，指定需要链接的系统框架
  s.ios.frameworks = 'FaceSDK'

  s.source_files = 'Source/*.{h,m}'
  s.dependency 'FFBaseLabelCustomTest'
  s.dependency 'CTMediator'
end
