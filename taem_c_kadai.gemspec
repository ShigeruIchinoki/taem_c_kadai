# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'taem_c_kadai/version'

Gem::Specification.new do |spec|
  spec.name          = "taem_c_kadai"
  spec.version       = TaemCKadai::VERSION
  spec.authors       = ["ShigeruIchinoki"]
  spec.email         = ["a1505si@aiit.ac.jp"]

  spec.summary       = %q{team c kadai}
  spec.description   = %q{team c kadai}
  spec.homepage      = ""
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pebbles-soreyuke", "0.1.2"
end
