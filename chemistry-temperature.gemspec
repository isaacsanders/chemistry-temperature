# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chemistry-temperature/version'

Gem::Specification.new do |gem|
  gem.name          = "chemistry-temperature"
  gem.version       = Chemistry::Temperature::VERSION
  gem.authors       = ["Isaac Sanders"]
  gem.email         = ["isaac@isaacbfsanders.com"]
  gem.description   = %q{Work with temperatures in Celsius, Fahrenheit, and Kelvin}
  gem.summary       = %q{Work with temperatures in Celsius, Fahrenheit, and Kelvin}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
