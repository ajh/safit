# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'safit/version'

Gem::Specification.new do |spec|
  spec.name          = "safit"
  spec.version       = Safit::VERSION
  spec.authors       = ["Andrew Hartford"]
  spec.email         = ["hartorda@gmail.com"]
  spec.description   = %q{A command line notification utility}
  spec.summary       = %q{A command line notification utility}
  spec.homepage      = "https://github.com/ajh/safit"
  spec.license       = "GPL"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "configliere"
  spec.add_runtime_dependency "ruby_gntp"
  spec.add_runtime_dependency "thor"
end
