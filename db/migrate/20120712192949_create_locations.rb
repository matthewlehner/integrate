class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.string :city
      t.string :postal_code
      t.float :latitude
      t.float :longitude

      t.references :addressable, polymorphic: true

      t.timestamps
    end

    add_index :locations, [:addressable_id, :addressable_type]
  end
end
