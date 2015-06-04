# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mummy/version'

Gem::Specification.new do |spec|
  spec.name          = "mummy"
  spec.version       = Mummy::VERSION
  spec.authors       = ["Tim Rogers"]
  spec.email         = ["tim@gocardless.com"]

  spec.summary       = %q{Test yourself on words listed in a file - perfect for revising for exams!}
  spec.homepage      = "https://github.com/timrogers/mummy"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
