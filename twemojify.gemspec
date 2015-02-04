$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'twemojify/version'

Gem::Specification.new do |s|
  s.name        = 'twemojify'
  s.version     = Twemojify::VERSION
  s.summary     = "Ruby port of the official Twitter twemoji library."
  s.description = "Ruby port of the official Twitter twemoji library."
  s.licenses    = ['MIT']
  s.homepage    = 'http://github.com/postliminary/twemojify'

  s.authors     = ["Thomas Tuttle"]
  s.email       = 'thomas@postlimiary.com'

  s.require_paths  = ["lib"]
  s.files          = `git ls-files`.split("\n")
  s.test_files     = `git ls-files -- {test,spec,features}/*`.split("\n")
end