# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gema/version'

Gem::Specification.new do |gem|
  gem.name          = "gema"
  gem.version       = Gema::VERSION
  gem.authors       = ["katerine"]
  gem.email         = ["katerine_cardona@hotmail.com"]
  gem.description   = %q{juego tres en raya}
  gem.summary       = %q{gema para el juego de tres en raya}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'guard_rspec'
end
