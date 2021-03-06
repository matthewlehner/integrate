class Offsite < ActiveRecord::Base
  has_one :location, as: :addressable, dependent: :destroy
  accepts_nested_attributes_for :location

  attr_accessible :details, :name, :starts_at, :ends_at, :location_attributes

  validates_presence_of :name
end
