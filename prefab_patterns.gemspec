# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prefab_patterns/version'

Gem::Specification.new do |spec|
  spec.name          = "prefab_patterns"
  spec.version       = PrefabPatterns::VERSION
  spec.authors       = ["Jason Ramirez"]
  spec.email         = ["ramirez676@gmail.com"]
  spec.summary       = %q{A tool to add design patterns to your code base.}
  spec.description   = %q{A tool to add design patterns into your code base
                          that follow a highly opinionated directory structure
                          and encourage standardized patterns. No more copy
                          pasta. As an added benefit you get a living
                          styleguide that genuinely reflects the use of your
                          design patterns}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ["prefab_patterns"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "curb"
  spec.add_dependency "rails"
  spec.add_dependency "thor"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "coffee-rails"
  spec.add_development_dependency "codeclimate-test-reporter"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "sass-rails"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "webmock"
end
