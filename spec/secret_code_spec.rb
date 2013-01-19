require 'spec_helper'

describe SecretCode do

  describe '#generate_code' do
    before  { subject.generate_code }
    
    it 'secret code is the correct length' do
      subject.secret_code.length.should == 5
    end

    it 'secret code only contains the specified symbols' do
      compare_arrays = subject.secret_code - subject.symbols
      compare_arrays.should == []
    end

    #I think I should check if the secret_code is random
    #but still confused as to how to do this.

  end

end
