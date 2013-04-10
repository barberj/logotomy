# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'logotomy/version'

Gem::Specification.new do |spec|
  spec.name          = "logotomy"
  spec.version       = Logotomy::VERSION
  spec.authors       = ["barberj"]
  spec.email         = ["barber.justin@gmail.com"]
  spec.description   = %q{Give Rails Logging a Lobotomy.}
  spec.summary       = %q{
    + Silence ActiveRecord sql and identity logs.
    + Silence ActionController logs.
  }
  spec.homepage      = "https://github.com/barberj/logotomy"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "rails"
end
