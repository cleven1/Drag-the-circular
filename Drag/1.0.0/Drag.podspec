Pod::Spec.new do |s|
  s.name         = "Drag"
  s.version      = "1.0.0"
  s.license  = { :type => 'MIT' }
  s.summary      = "A fast integration images loop function of custom control"
  s.description  = "A fast integration images loop function of custom control addtion with cocoapod support."
  s.homepage     = "https://github.com/cleven1/Drag-the-circular"
  s.social_media_url   = "https://github.com/cleven1/Drag-the-circular.git"
  s.license= { :type => "MIT", :file => "LICENSE" }
  s.author       = { "cleven" => "543069316@qq.com" }
  s.source       = { :git => "https://github.com/cleven1/Drag-the-circular.git", :tag => s.version }
  s.source_files = "圆形拖拽实现`/*"
  s.ios.deployment_target = '8.0'
  s.frameworks   = 'UIKit'
  s.requires_arc = true

end