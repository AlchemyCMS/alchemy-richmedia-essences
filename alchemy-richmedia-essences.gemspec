# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alchemy-richmedia-essences/version'

Gem::Specification.new do |gem|
  gem.name          = "alchemy-richmedia-essences"
  gem.version       = Alchemy::Richmedia::Essences::VERSION
  gem.authors       = ["Thomas von Deyen"]
  gem.email         = ["thomas@vondeyen.com"]
  gem.description   = %q{EssenceAudio and EssenceVideo for AlchemyCMS 4.0}
  gem.summary       = %q{Adds EssenceAudio and EssenceVideo essences to your AlchemyCMS powered website.}
  gem.homepage      = "http://alchemy-cms.com"
  gem.license       = 'BSD New'

  gem.files         = `git ls-files`.split($/)
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'alchemy_cms', ['>= 4.0.0.rc1']
end
