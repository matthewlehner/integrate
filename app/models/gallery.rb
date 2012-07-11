class Gallery < ActiveRecord::Base
  attr_accessible :address, :description, :email, :exhibition_description, :name, :phone, :website
end
