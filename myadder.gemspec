# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'myadder/version'

Gem::Specification.new do |spec|
  spec.name          = "myadder"
  spec.version       = Myadder::VERSION
  spec.authors       = ["Bjorn Hughes"]
  spec.email         = ["bjorn.hughes@gmail.com"]
  spec.description   = 'Adds 2 numbers'
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/bjornhughes/myadder'
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.8.7'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
