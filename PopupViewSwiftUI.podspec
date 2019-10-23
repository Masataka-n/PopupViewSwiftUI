Pod::Spec.new do |s|

s.name         = "PopupViewSwiftUI"
s.version      = "1.0.0"
s.summary      = "SwiftUI Popup Library"
s.swift_version = "5"
s.description  = <<-DESC
This is a library that displays View in a popup.
DESC
s.homepage     = "https://github.com/Masataka-n/PopupViewSwiftUI"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "Masataka Nakagawa" => "n.masataka.hal.ih@gmail.com" }
s.social_media_url   = "https://twitter.com/Masatak22063922"
s.ios.deployment_target = '13.0'
#s.osx.deployment_target = '10.14'
#s.tvos.deployment_target = '10.0'
s.source       = { :git => "https://github.com/Masataka-n/PopupViewSwiftUI.git", :tag => "#{s.version}" }
s.source_files  = "PopupViewSwiftUI/**/*.swift"
end
