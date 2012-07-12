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

  it 'responds to #full_street_address' do
    location = FactoryGirl.create(:location)
    location.full_street_address.should eq("#{location.address}, #{location.city}, BC, Canada, #{location.postal_code}")

  end
end
