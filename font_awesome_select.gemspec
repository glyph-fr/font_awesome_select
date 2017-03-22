# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'font_awesome_select/version'

Gem::Specification.new do |spec|
  spec.name          = "font_awesome_select"
  spec.version       = FontAwesomeSelect::VERSION
  spec.authors       = ["vala"]
  spec.email         = ["gonjo@free.fr"]

  spec.summary       = %q{Helpers to allow listing Font Awesome icons in select fields}
  spec.description   = %q{This gem allows listing all Font Awesome 4.7 icons easily, and create select fields letting your users choose an icon for a specific field.}
  spec.homepage      = "https://github.com/glyph-fr/font_awesome_select"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 4.0", "<= 6.0"

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
