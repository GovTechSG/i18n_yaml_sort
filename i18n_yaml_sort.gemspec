# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'i18n_yaml_sort/version'

Gem::Specification.new do |spec|
  spec.name          = "i18n_yaml_sort"
  spec.version       = I18nYamlSort::VERSION
  spec.authors       = ["Karuppasamy M"]
  spec.email         = ["samykaruppa@gmail.com"]

  spec.summary       = %q{Sort I18n YAML files alphabetical order}
  spec.description   = %q{Sort I18n - YAML files alphabetical order}
  spec.homepage      = "https://github.com/idagds"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency "activesupport", "~> 4.2.5.2"
end
