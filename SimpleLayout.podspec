Pod::Spec.new do |spec|

  spec.name         = "SimpleLayout"
  spec.version      = "1.1.0"
  spec.summary      = "The framework add simple way to create layout on anchors"

  spec.description  = "Sipmle wrappers to anchors"

  spec.homepage     = "https://www.linkedin.com/in/oleg-myatlikov/"
  spec.license      = "MIT License"

  spec.author       = { "Oleg Myatlikov" => "olegmyatlikov@gmail.com" }

  spec.platform     = :ios, "10.0"
  spec.source       = { :git => "https://github.com/olegmyatlikov/SimpleLayout.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/**/*.{swift}"

end
