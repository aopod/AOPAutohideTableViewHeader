#
# Be sure to run `pod lib lint AOPAutohideTableViewHeader.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AOPAutohideTableViewHeader'
  s.version          = '0.1.0'
  s.summary          = 'Autohide tableHeaderView of UITableView'

  s.description      = <<-DESC
Autohide tableHeaderView of UITableView which is inspired by UISearchBar's behaviour.
Also supports Interface Builder to specify whether tableHeaderView is autohide or not.
Why Cocoapods? I just wanna take a shot :)
                       DESC

  s.homepage         = 'https://github.com/aopod/AOPAutohideTableViewHeader'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'aopod' => 'aopodcom@gmail.com' }
  s.source           = { :git => 'https://github.com/aopod/AOPAutohideTableViewHeader.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.subspec 'Core' do |sp|
    sp.source_files = 'AOPAutohideTableViewHeader/Classes/Core/**/*.{h,m}'
  end

  # Provides AOPAutohideTableHeaderView, support specifying auto mode through code or Interface Builder
  s.subspec 'UIView' do |sp|
    sp.source_files = 'AOPAutohideTableViewHeader/Classes/UIView/**/*.{h,m}'
    sp.dependency 'AOPAutohideTableViewHeader/Core'
  end

  # Provides AOPAutohideHeaderTableView, support specifying auto mode through code or Interface Builder
  # Involves some private APIs, may cause AppStore rejection.
  s.subspec 'UITableView' do |sp|
    sp.source_files = 'AOPAutohideTableViewHeader/Classes/UITableView/**/*.{h,m}'
    sp.dependency 'AOPAutohideTableViewHeader/Core'
  end

  s.frameworks = 'UIKit'
end
