class Gallery < ActiveRecord::Base
  has_one :location, through: :addressable

  attr_accessible :name, :address, :phone, :email, :website, :hours, :festival_hours, :description, :exhibition_description, :photo

  image_accessor :photo

  default_scope order("LOWER(name)")
end
