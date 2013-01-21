require 'spec_helper'

describe Response do

  describe '#generate_code' do
    before  { subject.response }

    context 'when there is  match' do
      let(:guess) { ["y"] }
      let(:secret_code) { ["y"] }
      its(:response) { should == MATCH_SYMBOL }
    end

    context 'when there is 2 near matches' do
      let(:guess) { ["ry"] }
      let(:secret_code) { ["yr"] }
      its(:response) { should == NEAR_MATCh_SYMBOL }
    end

    context 'when there is no match' do
      let(:guess) { ["r"] }
      let(:secret_code) { ["y"] }
      its(:response) { should == NO_MATCH_SYMBOL }
    end
   

  end

end
