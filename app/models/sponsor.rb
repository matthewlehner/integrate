class Sponsor < ActiveRecord::Base
  attr_accessible :description, :logo, :name, :url

  image_accessor :logo

  validates_presence_of :name, :logo

end
