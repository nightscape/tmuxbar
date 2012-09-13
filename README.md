# Tmuxbar

Formatter for RSpec that shows a progress bar in tmux.

## Installation

Add this line to your application's Gemfile:

    gem 'tmuxbar', :git => 'git://github.com/juanibiapina/tmuxbar.git'

And probably:

    gem 'tmux', :git => 'git://github.com/juanibiapina/tmux-ruby.git'

And then execute:

    $ bundle

## Usage

Add '--format Tmuxbar' to your .rspec file.

The progress bar should appear on the current attached session.

## Under the hood

Tmuxbar is just a wrapper over [Fuubar](https://github.com/jeffkreeftmeijer/fuubar) that uses tmux-ruby to display the progress bar widget. It doesn't actually notify you of passing or failing tests. For that I use [guard](https://github.com/guard/guard) and [terminal-notifier-guard](https://github.com/Springest/terminal-notifier-guard).
