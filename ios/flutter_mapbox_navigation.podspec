#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_mapbox_navigation.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_mapbox_navigation'
  s.version          = '0.2.2'
  s.summary          = 'Add Turn By Turn Navigation to Your Flutter Application Using MapBox. Never leave your app when you need to navigate your users to a location.'
  s.description      = <<-DESC
Add Turn By Turn Navigation to Your Flutter Application Using MapBox. Never leave your app when you need to navigate your users to a location.
                       DESC
  s.homepage         = 'https://eopeter.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Emmanuel Peter Oche' => 'eopeter@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'MapboxNavigation', :git => 'https://github.com/mapbox/mapbox-navigation-ios.git', :tag => 'v3.10.0'
  
  s.platform = :ios, '16.6'
  s.swift_version = '5.5'

  # MERGED: All xcconfig settings must be in one block.
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/MapboxCommon/MapboxCommon.xcframework"/** "$(PODS_ROOT)/MapboxCoreMaps/MapboxCoreMaps.xcframework"/** "$(PODS_ROOT)/MapboxMaps/MapboxMaps.xcframework"/** "$(PODS_ROOT)/MapboxNavigation/MapboxNavigation.xcframework"/**'
  }
end