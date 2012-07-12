class Gallery < ActiveRecord::Base
  has_one :location, as: :addressable

  attr_accessible :name, :phone, :email, :website, :hours, :festival_hours, :description, :exhibition_description, :photo

  image_accessor :photo

  default_scope order("LOWER(name)")
end
