Pod::Spec.new do |s|
  s.name             = 'SLFlexibleButton'
  s.version          = '0.0.1'
  s.summary          = 'A button library which able to draw it self with bezel defined by relative location'
  s.author           = { 'Shuo Li' => 'shuoli84@gmail.com' }
  s.source           = { :git => 'https://github.com/shuoli84/SLFlexibleButton.git', :tag => 'v0.0.1' }
  s.source_files     = 'FlexibleButton/SLFlexibleButton.{h,m}'
  s.dependency         'UIGlossyButton'
end
