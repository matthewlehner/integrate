class Location < ActiveRecord::Base
  belongs_to :addressable, polymorphic: true

  attr_accessible :address, :city, :postal_code, :latitude, :longitude

  validates_presence_of :address, :city, on: :create
end
