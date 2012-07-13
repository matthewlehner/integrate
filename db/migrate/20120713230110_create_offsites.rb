class CreateOffsites < ActiveRecord::Migration
  def change
    create_table :offsites do |t|
      t.string :name
      t.text :details
      t.datetime :schedule

      t.timestamps
    end
  end
end
