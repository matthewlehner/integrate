class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :website
      t.text   :hours
      t.text   :festival_hours
      t.text   :description
      t.text   :exhibition_description
      t.string :photo_uid

      t.timestamps
    end
  end
end
