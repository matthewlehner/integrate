class Gallery < ActiveRecord::Base
  has_one :location, as: :addressable
  accepts_nested_attributes_for :location

  attr_accessible :name, :phone, :email, :website, :hours, :festival_hours, :description, :exhibition_description, :photo, :location_attributes

  image_accessor :photo

  default_scope order("LOWER(name)")
end
