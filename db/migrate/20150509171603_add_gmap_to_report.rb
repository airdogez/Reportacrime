class AddGmapToReport < ActiveRecord::Migration
  def change
    add_column :reports, :gmaps, :boolean
  end
end
