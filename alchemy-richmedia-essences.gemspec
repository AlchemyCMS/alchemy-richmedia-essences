# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alchemy-richmedia-essences/version'

Gem::Specification.new do |gem|
  gem.name          = "alchemy-richmedia-essences"
  gem.version       = Alchemy::Richmedia::Essences::VERSION
  gem.authors       = ["Thomas von Deyen"]
  gem.email         = ["tvd@magiclabs.de"]
  gem.description   = %q{EssenceAudio and EssenceVideo for Alchemy CMS 3.0}
  gem.summary       = %q{Adds EssenceAudio and EssenceVideo essences to your Alchemy CMS powered site.}
  gem.homepage      = "http://alchemy-cms.com"
  gem.license       = 'BSD New'

  gem.files         = `git ls-files`.split($/)
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'alchemy_cms', ['>= 3.0.0']
end
