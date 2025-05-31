Pod::Spec.new do |s|
  s.name             = 'onnxruntime-genai'
  s.version          = '0.8.0'
  s.authors          = 'microsoft'
  s.license          = { :type => 'MIT' }
  s.homepage         = 'https://github.com/microsoft/onnxruntime-genai.git'
  s.source           = { :http => "https://github.com/endeny/CocoaPodsSpecs/releases/download/onnxruntime/onnxruntime-genai-ios-0.8.0.zip" }
  s.summary          = 'Generative AI extensions for onnxruntime'
  s.description      = <<-DESC

  onnxruntime-genai is a set of extensions for ONNX Runtime that provides support for generative AI models, including large language models (LLMs) and vision-language models (VLMs). It includes features such as quantization, model optimization, and support for various hardware accelerators.
                       DESC

  s.cocoapods_version = '>= 1.9.0'
  s.ios.deployment_target = '15.0'

  s.module_name = 'OnnxruntimeGenai'
  s.library = 'c++', 'resolv'
  s.static_framework = true

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386,x86_64,armv7,armv7s'
  }

  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386,x86_64,armv7,armv7s'
  }

  s.ios.vendored_frameworks = 'onnxruntime-genai.xcframework'
  s.source_files = 'Headers/**/*.h'

end
