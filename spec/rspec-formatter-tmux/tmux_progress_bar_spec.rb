require "spec_helper"

describe TmuxProgressBar do
  let(:output) { StringIO.new }
  subject { TmuxProgressBar.new(output) }

  it 'should inherit from Fuubar' do
    subject.class.superclass.should == Fuubar
  end
end
