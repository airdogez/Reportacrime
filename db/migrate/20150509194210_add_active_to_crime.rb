class AddActiveToCrime < ActiveRecord::Migration
  def change
    add_column :crimes, :active, :boolean
  end
end
