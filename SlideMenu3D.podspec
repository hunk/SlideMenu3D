Pod::Spec.new do |s|
  s.name             = "SlideMenu3D"
  s.version          = "0.1.1"
  s.summary          = "A small class for lateral menu with 3D effect."
  s.description      = <<-DESC
                       A small class for lateral menu with 3D effect.

                       DESC
  s.homepage         = "https://github.com/hunk/SlideMenu3D"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "@hunk" => "ing.edgar@gmail.com" }
  s.source           = { :git => "https://github.com/hunk/SlideMenu3D.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/hunk'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'SlideMenu3D' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
