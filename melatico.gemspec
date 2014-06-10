# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'melatico/version'

Gem::Specification.new do |spec|
  spec.name          = "melatico"
  spec.version       = Melatico::VERSION
  spec.authors       = ["Antonio Antillon"]
  spec.email         = ["antillas21@gmail.com"]
  spec.summary       = %q{Simple ruby library to generate Melate (Mexico's Lotto) combinations.}
  spec.description   = %q{Simple ruby library to generate Melate (Mexico's Lotto) combinations.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "pry"
end
