# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ordered_find/version'

Gem::Specification.new do |spec|
  spec.name          = "ordered_find"
  spec.version       = OrderedFind::VERSION
  spec.authors       = ["Takeo Fujita"]
  spec.email         = ["takeofujita@gmail.com"]
  spec.summary       = %q{ordered find}
  spec.description   = %q{ordered find}
  spec.homepage      = "https://github.com/tkeo/ordered_find"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", ">= 4.0"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
