# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec_proxypac/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec-proxypac'
  spec.version       = RspecProxypac::VERSION
  spec.authors       = ['Hiroshi Ota']
  spec.email         = ['otahi.pub@gmail.com']
  spec.summary       = 'Easily test your proxy.pac with RSpec.'
  spec.description   =
    'Rspec-proxypac is an rspec plugin for easy proxy.pac testing.'
  spec.homepage      = 'https://github.com/otahi/rspec-proxypac'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.add_dependency 'rspec', '>= 2.9'
  spec.add_dependency 'pac', '~> 1.0.0'
  spec.add_dependency 'therubyracer', '~> 0.12.1'

  spec.add_development_dependency 'bundler', '>= 1.6'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '0.24.1'
  spec.add_development_dependency 'coveralls', '~> 0.7'
  spec.add_development_dependency 'byebug', '~> 3.4.0'
end
