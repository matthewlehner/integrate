class Location < ActiveRecord::Base
  belongs_to :addressable, polymorphic: true

  attr_accessible :address, :city, :postal_code, :latitude, :longitude

  validates_presence_of :address, :city, on: :create

  geocoded_by :full_street_address
  after_validation :geocode, unless: :geocoded?

  def full_street_address
    [address, city, 'BC', 'Canada', postal_code].compact.join(', ')
  end

  def map_link
    "http://maps.google.com/maps?q=#{self.full_street_address}"
  end
end
