# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'has_gravatar/version'

Gem::Specification.new do |spec|

  spec.name           = 'has_gravatar'
  spec.version        = HasGravatar::VERSION
  spec.authors        = ['Victor Gama']
  spec.email          = ['hey@vito.io']
  spec.description    = %q{Dead simple Gravatar URL generator}
  spec.summary        = %q{Dead simple Gravatar URL generator}
  spec.homepage       = 'https://github.com/victorgama/has_gravatar'
  spec.license        = 'MIT'

  spec.files          = `git ls-files`.split($/)
  spec.executables    = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files     = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths  = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake', '~> 10.1'
  spec.add_development_dependency 'rspec', '~> 2.14'
  spec.add_development_dependency 'sqlite3', '~> 1.3'

  spec.add_dependency 'activerecord', '>= 5.0.0.rc1'

end
