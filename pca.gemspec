# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pca/version'

Gem::Specification.new do |spec|
  spec.name          = "pca"
  spec.version       = Pca::VERSION
  spec.authors       = ["Bavin Ondieki"]
  spec.email         = ["bavin2009@gmail.com"]
  spec.description   = %q{PCA Gem for Principal Component Analysis}
  spec.summary       = %q{PCA -Obtaining Principle Components in Data}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
