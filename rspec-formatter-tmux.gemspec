# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rspec-formatter-tmux/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Juan Ibiapina"]
  gem.email         = ["juanibiapina@gmail.com"]
  gem.description   = %q{RSpec formatter for tmux progress bar}
  gem.summary       = %q{RSpec formatter for tmux progress bar}
  gem.homepage      = "https://github.com/juanibiapina/rspec-formatter-tmux"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rspec-formatter-tmux"
  gem.require_paths = ["lib"]
  gem.version       = Rspec::Formatter::Tmux::VERSION

  gem.add_dependency('rspec')
end
