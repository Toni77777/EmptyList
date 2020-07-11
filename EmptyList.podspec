Pod::Spec.new do |spec|
  spec.name         = "EmptyList"
  spec.version      = "1.0.0"
  spec.summary      = "EmptyList - List(SwiftUI) supports displaying Empty ListView for empty state"
  spec.homepage     = "https://github.com/Toni77777/EmptyList"
  spec.license      = "MIT"
  spec.author             = { "Anton Paliakov" => "toxa95401@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/Toni77777/EmptyList.git", :tag => "#{spec.version}" }
  spec.source_files  = "EmptyList/*.swift"
  spec.swift_version = "5.2"
end
