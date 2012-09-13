require "spec_helper"

describe Tmuxbar do
  let(:output) { StringIO.new }
  subject { Tmuxbar.new(output) }

  it 'should inherit from Fuubar' do
    subject.class.superclass.should == Fuubar
  end
end
