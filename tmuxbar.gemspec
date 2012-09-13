# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Juan Ibiapina"]
  gem.email         = ["juanibiapina@gmail.com"]
  gem.description   = %q{RSpec formatter for tmux progress bar}
  gem.summary       = %q{RSpec formatter for tmux progress bar}
  gem.homepage      = "https://github.com/juanibiapina/tmuxbar"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "tmuxbar"
  gem.require_paths = ["lib"]
  gem.version       = "0.0.1"

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'tmux'
  gem.add_development_dependency 'guard-rspec'
  gem.add_development_dependency 'rb-fsevent'
  gem.add_development_dependency 'listen', ["~> 0.4.7"]

  gem.add_dependency 'rspec'
  gem.add_dependency 'fuubar'
  gem.add_dependency 'tmux'
end
