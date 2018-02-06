require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-version-number"
  s.version      = package["version"]
  s.summary      = "Expose version number and build string"
  s.author       = "Alvaro Medina Ballester <amedina@apsl.net>"

  s.homepage     = "https://github.com/Yunixx/react-native-version-number"

  s.license      = "MIT"
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/Yunixx/react-native-version-number", :tag => "#{s.version}" }

  s.source_files  = "ios/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
end
