require 'spec_helper'

describe Location do
  it 'has a valid factory' do
    FactoryGirl.create(:location).should be_valid
  end

  it 'checks for address' do
    Location.new.should have(1).error_on(:address)
  end

  it 'checks for city' do
    Location.new.should have(1).error_on(:city)
  end
end
