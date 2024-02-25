Pod::Spec.new do |s|
  s.name             = 'FridaGumJS'
  s.version          = '16.2.1'
  s.authors          = 'Frida'
  s.license          = { :type => 'Apache' }
  s.homepage         = 'https://github.com/frida/frida-gum.git'
  s.source           = { :http => "https://github.com/endeny/CocoaPodsSpecs/releases/download/frida-gumjs/FridaGumJS-16_2_1.tar" }
  s.summary          = 'Frida GumJS'
  s.description      = <<-DESC

  Frida GumJS
                       DESC

  s.cocoapods_version = '>= 1.9.0'
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '11.0'

  s.module_name = 'FridaGumJS'
  s.library = 'c++'
  s.static_framework = true

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386,x86_64,armv7,armv7s'
  }

  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386,x86_64,armv7,armv7s'
  }

  s.ios.vendored_frameworks = 'Frameworks/FridaGumJS.xcframework'
  s.osx.vendored_frameworks = 'Frameworks/FridaGumJS.xcframework'
  s.watchos.vendored_frameworks = 'Frameworks/FridaGumJS.xcframework'
  s.tvos.vendored_frameworks = 'Frameworks/FridaGumJS.xcframework'

end
