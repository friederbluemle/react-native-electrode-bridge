require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package["name"]
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = "#{s.name}: #{s.summary}"
  s.author       = "Electrode"
  s.homepage     = "https://github.com/electrode-io/react-native-electrode-bridge"
  s.license      = "Apache 2.0"

  s.platforms    = { :ios => "10.2" }
  s.source       = { :git => "https://github.com/electrode-io/react-native-electrode-bridge.git", :tag => "v#{s.version}" }

  s.source_files = "ios/ElectrodeReactNativeBridge/**/*.{swift,h,m}"
  s.swift_version = "5.0"

  s.dependency "Core"
end
