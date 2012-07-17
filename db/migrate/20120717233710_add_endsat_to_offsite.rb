class AddEndsatToOffsite < ActiveRecord::Migration
  def change
    add_column :offsites, :ends_at, :datetime
    rename_column :offsites, :schedule, :starts_at
  end
end
