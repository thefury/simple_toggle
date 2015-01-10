# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'feature_flag/version'

Gem::Specification.new do |gem|
  gem.name          = "feature_flag"
  gem.version       = FeatureFlag::VERSION
  gem.licenses      = ['MIT']
  gem.authors       = ["Trevor Oke"]
  gem.email         = ["trevor@trevoroke.com"]
  gem.description   = %q{Feature toggle for ruby/rails}
  gem.summary       = %q{Feature toggle for ruby/rails}
  gem.homepage      = "https://github.com/thefury/feature_flag"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake', '~> 0'
  gem.add_development_dependency 'rspec', '~> 3.1', '>= 3.1.0'
  gem.add_development_dependency 'sqlite3', '~> 1.0'

  gem.add_runtime_dependency 'activerecord', '~> 4.2'
  gem.add_runtime_dependency 'rails', '~> 4.0'
end
