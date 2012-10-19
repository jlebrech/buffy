# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'buffy/version'

Gem::Specification.new do |gem|
  gem.name          = "buffy"
  gem.version       = Buffy::VERSION
  gem.authors       = ["Joseph Le Brech"]
  gem.email         = ["jlebrech@gmail.com"]
  gem.description   = %q{FileBuffer Gem}
  gem.summary       = %q{Loads a file into a file buffer}
  gem.homepage      = "https://github.com/jlebrech/buffy"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
