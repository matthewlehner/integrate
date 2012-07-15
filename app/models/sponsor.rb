class Sponsor < ActiveRecord::Base
  attr_accessible :description, :logo_uid, :name, :url
end
