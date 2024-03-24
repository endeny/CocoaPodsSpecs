Pod::Spec.new do |s|
  s.name             = 'harfbuzz'
  s.version          = '2.6.4'
  s.authors          = 'mpv'
  s.license          = { :type => 'Apache' }
  s.homepage         = 'https://github.com/mpv/mpv.git'
  s.source           = { :http => "https://github.com/endeny/CocoaPodsSpecs/releases/download/MPVKit/harfbuzz-2_6_4.tar" }
  s.summary          = 'mpv'
  s.description      = <<-DESC
  harfbuzz
                       DESC

  s.cocoapods_version = '>= 1.9.0'
  s.ios.deployment_target = '12.0'

  s.module_name = 'harfbuzz'
  s.library = 'c++', 'resolv'
  s.static_framework = true

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386,x86_64,armv7,armv7s'
  }

  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386,x86_64,armv7,armv7s'
  }

  s.ios.vendored_frameworks = 'Frameworks/harfbuzz.xcframework'

end
