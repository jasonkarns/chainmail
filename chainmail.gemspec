# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "chainmail"
  spec.version       = "0.0.1"
  spec.authors       = ["Jason Karns"]
  spec.email         = ["jason@karns.name"]

  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"
  spec.summary       = "Declare command-style methods chainable"
  spec.description   = <<-DESC
  Methods should perform a command (side effect) or return a value, never both.
  This is Command/Query Separation. However, it is convenient to allow command
  methods to return `self` such that they are chainable. This module does just
  that. Declare which methods are chainable by name, and they are wrapped
  to return self.
  DESC

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_path  = "lib"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
