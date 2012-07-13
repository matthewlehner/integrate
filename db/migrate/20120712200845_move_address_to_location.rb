require 'gallery'
require 'location'

class MoveAddressToLocation < ActiveRecord::Migration
  def up
    Gallery.find_each do |g|
      g.create_location(address: g.address)
    end

    remove_column :galleries, :address
  end

  def down
    add_column :galleries, :address, :string
  end
end
