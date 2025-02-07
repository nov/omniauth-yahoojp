# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-yahoojp/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["nov"]
  gem.email         = ["nov@matake.jp"]
  gem.description   = %q{Fork of Official OmniAuth strategy for Yahoo! JAPAN.}
  gem.summary       = %q{Fork of Official OmniAuth strategy for Yahoo! JAPAN.}
  gem.homepage      = "https://github.com/nov/omniauth-yahoojp"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "nov-omniauth-yahoojp"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::YahooJp::VERSION
  gem.licenses      = "MIT"

  gem.add_dependency 'omniauth', '>= 1.0'
  gem.add_dependency 'omniauth-oauth2', '>= 1.1'
  gem.add_dependency 'httpauth'
  gem.add_dependency 'json-jwt'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rspec-its'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
