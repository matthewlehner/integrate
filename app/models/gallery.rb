class Gallery < ActiveRecord::Base
  attr_accessible :name, :address, :phone, :email, :website, :hours, :festival_hours, :description, :exhibition_description

  image_accessor :photo
end
