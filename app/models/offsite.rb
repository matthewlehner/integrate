class Offsite < ActiveRecord::Base
  has_one :location, as: :addressable
  accepts_nested_attributes_for :location

  attr_accessible :details, :name, :schedule, :location_attributes
end
