Pod::Spec.new do |s|
  s.name         = 'PPNumberButton'
  s.version      = '0.6.0'
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.homepage     = 'https://github.com/jkpang/PPNumberButton.git'
  s.authors      = { "jkpang" => "jkpang@outlook.com" }
  s.summary      = 'iOS中一款高度可定制性商品计数按钮(京东/淘宝/饿了么/美团外卖/百度外卖样式),使用简单!'

  s.platform     = :ios, '7.0'
  s.source       = { git: 'https://github.com/jkpang/PPNumberButton.git', :tag => s.version.to_s}
  s.source_files = 'PPNumberButton/PPNumberButton/*.{h,m}'
  s.frameworks   =  'UIKit'
  s.requires_arc = true

end
