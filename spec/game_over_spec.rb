require 'spec_helper'

describe Response do

  describe '#generate_code' do
    before  { subject.response }

    context 'when players wins' do
      let(:response) { ["b"]*5 }
      its(:try_again) { should == true }
    end

    context 'when player does not win but still has turns' do
      let(:response) { ["bbbbw"] }
      let(:turn_number) { TOTAL_TURNS }
      its(:try_again) { should == true }
    end

    context 'when player does not win and has no turns' do
      let(:response) { ["bbbbw"] }
      let(:turn_number) { TOTAL_TURNS + 1 }
      its(:try_again) { should == false }
    end

    #wondering if I should test turn number incrementing properly?
    # although that is what the test above kindof tests
   

  end

end
