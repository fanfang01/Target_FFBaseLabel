Pod::Spec.new do |s|
  s.name             = 'Target_FFBaseLabelCustomTest' 
  s.version          = '1.0.0'
  s.summary          = 'test Target_FFBaseLabel.'
  s.description      = 'test Target_FFBaseLabel...'
  
  s.homepage         = 'https://github.com/fanfang01/Target_FFBaseLabel.git'
  s.license          = "MIT"
  s.author           = { 'Tracy Fan' => '375747625@qq.com' }

  s.source           = { :git => 'https://github.com/fanfang01/Target_FFBaseLabel.git', :tag => '1.0.0' }
  
  s.requires_arc = true
  s.ios.deployment_target = '12.0'

  s.source_files = 'Source/*.{h,m}'
  s.dependency 'FFBaseLabelCustomTest'
  s.dependency 'CTMediator'
end
