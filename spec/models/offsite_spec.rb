require 'spec_helper'

describe Offsite do
  it "has a valid factory" do
    FactoryGirl.create(:offsite).should be_valid
  end
end
