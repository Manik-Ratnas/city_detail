# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'city_detail/version'

Gem::Specification.new do |spec|
  spec.name          = "city_detail"
  spec.version       = CityDetail::VERSION
  spec.authors       = ["Manish Puri"]
  spec.email         = ["manishspuri@gmail.com"]
  spec.summary       = %q{Find any city details like coordinates, temperature country. }
  spec.description   = %q{A wrapper for opemweathermap.org api.   }
  spec.homepage      = "https://github.com/Manik-Ratnas/city_detail"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "open_uri"
  spec.add_development_dependency "json"
  spec.add_development_dependency "rspec"

end
