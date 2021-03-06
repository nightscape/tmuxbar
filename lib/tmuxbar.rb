require 'rspec/core/formatters/base_text_formatter'
require "tmux"
require "tmux/widgets/progress_bar"

class Tmuxbar < RSpec::Core::Formatters::BaseTextFormatter
  def start(example_count)
    super
    init_bar example_count
    self.background = :green
  end

  def stop
    super
    @session.status_bar.right.pop_widget(@bar) if @session
  end

  def example_passed(example)
    super
    increment_bar
  end

  def example_pending(example)
    super
    increment_bar
  end

  def example_failed(example)
    super
    self.background = :red
    increment_bar
  end

  def dump_summary(duration, example_count, failure_count, pending_count)
  end

  def dump_pending()
  end

  def dump_failures()
  end

  def message(message)
  end

  private

  def increment_bar
    @bar.value += 1 if @bar
  end

  def background=(color)
    @bar.field.background_color = color if @bar
  end

  def init_bar(size)
    server = Tmux::Server.new
    if (@session = server.sessions(attached: true).first)

      @bar = Tmux::Widgets::ProgressBar.new("RSpec")
      @bar.total = size
      @session.status_bar.right.add_widget(@bar)
    end
  end
end
