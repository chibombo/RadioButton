#
#  Be sure to run `pod spec lint RadioButton.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "RadioButton"
  spec.version      = "1.0"
  spec.summary      = "RadioButton for iOS"
  spec.description  = "An easy way to implement RadioButton"
  spec.homepage     = "https://github.com/chibombo/RadioButton"
  spec.license      = "MIT"
  spec.author             = { "Genaro Arvizu" => "genaro.arvizu.vega@icloud.com" }
  spec.social_media_url   = "https://twitter.com/genaro_arvizu"
  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://github.com/chibombo/RadioButton.git", :tag => s.version }
  spec.source_files  = "RadiosButton/**/*.swift"
end
