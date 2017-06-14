lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'afip-public/version'

Gem::Specification.new do |s|
  s.name        = 'afip-public'
  s.version     =  AfipPublic::VERSION
  s.date        = '2017-06-12'
  s.summary     = "A simple helper for AFIP public API!"
  s.description = "A simple helper for AFIP public API!"
  s.authors     = ["gipsh"]
  s.email       = 'gipsh@github.com'
  s.files       = ["lib/afip-public.rb"]
  s.homepage    =
    'http://rubygems.org/gems/afip-public'
  s.license       = 'MIT'
  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'httparty'

  s.add_development_dependency "bundler", "~> 1.9.5"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "httparty", "~>0"

end
