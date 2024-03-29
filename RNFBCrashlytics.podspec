# Firebase SDK Override
firebase_sdk_version = '~> 6.8.1'
using_custom_firebase_sdk_version = defined? $FirebaseSDKVersion
if using_custom_firebase_sdk_version
  Pod::UI.puts "RNFBCrashlytics: Using user specified Firebase SDK version '#{$FirebaseSDKVersion}'"
  firebase_sdk_version = $FirebaseSDKVersion
end

# Fabric SDK Override
fabric_sdk_version = '~> 1.9.0'
using_custom_fabric_sdk_version = defined? $FabricSDKVersion
if using_custom_fabric_sdk_version
  Pod::UI.puts "RNFBCrashlytics: Using user specified Fabric SDK version '#{$FabricSDKVersion}'"
  fabric_sdk_version = $FabricSDKVersion
end

# Crashlytics SDK Override
crashlytics_sdk_version = '~> 3.12.0'
using_custom_crashlytics_sdk_version = defined? $CrashlyticsSDKVersion
if using_custom_crashlytics_sdk_version
  Pod::UI.puts "RNFBCrashlytics: Using user specified Crashlytics SDK version '#{$CrashlyticsSDKVersion}'"
  crashlytics_sdk_version = $CrashlyticsSDKVersion
end

Pod::Spec.new do |s|
  s.name                = "RNFBCrashlytics"
  s.version             = "6.0.3"
  s.description         = "React Native Firebase - Firebase Crashlytics is a lightweight, realtime crash reporter that helps you track, prioritize, and fix stability issues that erode your app quality. React Native Firebase provides automatic crash reporting for both native and JavaScript errors, including unhandled promise rejections."
  s.summary             = <<-DESC
                            A well tested feature rich Firebase implementation for React Native, supporting iOS & Android.
                          DESC
  s.homepage            = "http://invertase.io/oss/react-native-firebase"
  s.license             = "Apache-2.0"
  s.authors             = "Invertase Limited"
  s.source              = { :git => "https://github.com/invertase/react-native-firebase.git", :tag => "v#{s.version}" }
  s.social_media_url    = 'http://twitter.com/invertaseio'
  s.ios.deployment_target = "9.0"
  s.source_files        = 'ios/**/*.{h,m}'
  s.dependency          'React'
  s.dependency          'Fabric', fabric_sdk_version
  s.dependency          'Firebase/Core', firebase_sdk_version
  s.dependency          'Crashlytics', crashlytics_sdk_version
  s.dependency          'RNFBApp'
  s.static_framework    = true
end
