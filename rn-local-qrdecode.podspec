
require "json"
package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name            = "rn-local-qrdecode"
  s.version         = package['version']
  s.summary         = package['description']
  s.homepage        = "https://github.com/pzpupu/rn-local-qrdecode"
  s.license         = "MIT"
  s.author          = { "author" => "pzpupu@gmail.com" }
  s.platform        = :ios, "7.0"
  s.source          = { :git => "https://github.com/pzpupu/rn-local-qrdecode.git", :tag => "master" }
  s.source_files    = "ios/**/*.{h,m}"
  s.requires_arc    = true


  s.dependency "React"
  s.dependency 'ZXingObjC', '~> 3.2.2'

end
