# encoding: utf-8
require './lib/steamspy/version'

Gem::Specification.new do |gem|
  gem.name        = "steamspy"
  gem.version     = SteamSpy::VERSION
  gem.summary     = "SteamSpy Ruby API"
  gem.description = "A Ruby interface to the SteamSpy API"
  gem.license     = "MIT"

  gem.author   = "Rolandas Barysas"
  gem.email    = "rb@atomicflow.org"
  gem.homepage = "https://github.com/rbarysas/steamspy-ruby"

  gem.files = Dir['README*', 'LICENSE', 'lib/**/*']

  gem.add_development_dependency 'rake', '~> 11.2'
  gem.add_development_dependency 'minitest', '~> 5.9'

  gem.add_dependency 'httparty', '~> 0.14'
end
