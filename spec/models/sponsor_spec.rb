require 'spec_helper'

describe Sponsor do
  it 'has a valid factory' do
    FactoryGirl.create(:sponsor).should be_valid
  end
end
