class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :url
      t.text :description
      t.string :logo_uid

      t.timestamps
    end
  end
end
