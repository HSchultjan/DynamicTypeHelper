#
# Be sure to run `pod lib lint DynamicTypeHelper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DynamicTypeHelper'
  s.version          = '0.1.1'
  s.summary          = 'DynamicTypeHelper makes working with storyboards and dynamic type easier when you are using a custom font.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  DynamicTypeHelper allows you to leverage the power of storyboards while maintaining the ability to use dynamic type with custom fonts.
                       DESC

  s.homepage         = 'https://github.com/hschultjan/DynamicTypeHelper'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hschultjan' => 'hschultjan@googlemail.com' }
  s.source           = { :git => 'https://github.com/hschultjan/DynamicTypeHelper.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.1'

  s.source_files = 'DynamicTypeHelper/Classes/**/*'

  # s.resource_bundles = {
  #   'DynamicTypeHelper' => ['DynamicTypeHelper/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
