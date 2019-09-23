#
# Be sure to run `pod lib lint TicTokLikeTableView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TicTokLikeTableView'
  s.version          = '0.0.1'
  s.summary          = 'TicTokTableView library for full screen swipable cell'


  s.description      = <<-DESC
TicTokLikeTableView provides an easy way to create full screen TableView with swip up-down behavior instead
of scroll.
                       DESC

  s.homepage         = 'https://github.com/afsaredrisy/TicTokLikeTableView'
  s.screenshots     = 'https://nsobject.s3.us-east-2.amazonaws.com/ezgif.com-optimize-2.gif'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'afsaredrisy' => 'afsaredrisz@icloud.com' }
  s.source           = { :git => 'https://github.com/afsaredrisy/TicTokLikeTableView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://github.com/afsaredrisy'

  s.ios.deployment_target = '8.0'
  s.swift_version = "4.2"
  s.source_files = 'TicTokLikeTableView'
  
  # s.resource_bundles = {
  #   'TicTokLikeTableView' => ['TicTokLikeTableView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
