require 'spec_helper'

describe Offsite do
  it "has a valid factory" do
    FactoryGirl.create(:offsite).should be_valid
  end

  it 'checks for a name' do
    Offsite.new.should have(1).error_on(:name)
  end
end
