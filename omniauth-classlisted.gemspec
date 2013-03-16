# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-classlisted/version'

Gem::Specification.new do |gem|
  gem.name          = "omniauth-classlisted"
  gem.version       = Omniauth::Classlisted::VERSION
  gem.authors       = ["Darren Butcher"]
  gem.email         = ["dbutcher6@gmail.com"]
  gem.description   = %q{OmniAuth strategy for Classlisted}
  gem.summary       = %q{OmniAuth strategy for Classlisted}
  gem.homepage      = "http://github.com/hellodarren/omniauth-classlisted"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'omniauth-oauth2', '~> 1.1.1'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
