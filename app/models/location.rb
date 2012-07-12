class Location < ActiveRecord::Base
  attr_accessible :address, :city, :latitude, :longitude, :postal_code
end
