# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hello_rust/version'

Gem::Specification.new do |spec|
  spec.name          = "hello_rust"
  spec.version       = HelloRust::VERSION
  spec.authors       = ["Genki Sugawara"]
  spec.email         = ["sugawara@cookpad.com"]

  spec.summary       = %q{Hello, Rust!}
  spec.description   = %q{Hello, Rust!}
  spec.homepage      = "https://github.com/winebarrel/ruby-hello_rust"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = "ext/extconf.rb"

  spec.add_dependency "ffi"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
