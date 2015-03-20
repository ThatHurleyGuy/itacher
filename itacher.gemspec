# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itacher/version'

Gem::Specification.new do |spec|
  spec.name          = "itacher"
  spec.version       = Itacher::VERSION
  spec.authors       = ["hurley"]
  spec.email         = ["sean.hurley6@gmail.com"]
  spec.summary       = %q{Can be used to control ip2ir devices made by GlobalCache}
  spec.description   = %q{These devices (http://www.globalcache.com/products/itach/ip2ir-pspecs/) can send IR codes to control TVs, sound systems, etc... }
  spec.homepage      = "https://github.com/SeanHurley/itacher"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
