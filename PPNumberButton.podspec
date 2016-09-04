Pod::Spec.new do |s|
  s.name         = 'PPNumberButton'
  s.version      = '0.1.0'
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.homepage     = 'https://github.com/jkpang/PPNumberButton.git'
  s.authors      = { "jkpang" => "jkpang@outlook.com" }
  s.summary      = '类似京东淘宝商品数量的加减按钮,可定制程度高,使用简单!'

  s.platform     = :ios, '7.0'
  s.source       = { git: 'https://github.com/jkpang/PPNumberButton.git', :tag => s.version.to_s}
  s.source_files = 'PPNumberButton/PPNumberButton/*.{h,m}'
  s.frameworks   =  'UIKit'
  s.requires_arc = true

end