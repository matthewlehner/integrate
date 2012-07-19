class Sponsor < ActiveRecord::Base
  attr_accessible :description, :logo, :name, :url, :position

  image_accessor :logo

  validates_presence_of :name
  validates_presence_of :logo, on: :create

  scope :positioned, order("sponsors.position ASC")

end
