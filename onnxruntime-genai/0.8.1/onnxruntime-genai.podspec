Pod::Spec.new do |s|
  s.name             = 'onnxruntime-genai'
  s.version          = '0.8.1'
  s.authors          = 'Frida'
  s.license          = { :type => 'MIT' }
  s.homepage         = 'https://github.com/microsoft/onnxruntime-genai.git'
  s.source           = { :http => "https://github.com/endeny/CocoaPodsSpecs/releases/download/onnxruntime/onnxruntime-genai-ios-0.8.1.zip" }
  s.summary          = 'Generative AI extensions for onnxruntime'
  s.description      = <<-DESC

  Generative AI extensions for onnxruntime
                       DESC

  s.cocoapods_version = '>= 1.9.0'
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '11.0'

  s.module_name = 'onnxruntime_genai'
  s.library = 'c++', 'resolv'
  s.static_framework = true

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386,x86_64,armv7,armv7s'
  }

  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386,x86_64,armv7,armv7s'
  }

  s.ios.vendored_frameworks = 'Frameworks/onnxruntime-genai.xcframework'
  s.osx.vendored_frameworks = 'Frameworks/onnxruntime-genai.xcframework'
  s.watchos.vendored_frameworks = 'Frameworks/onnxruntime-genai.xcframework'
  s.tvos.vendored_frameworks = 'Frameworks/onnxruntime-genai.xcframework'

end
