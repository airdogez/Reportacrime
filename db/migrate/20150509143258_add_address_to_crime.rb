class AddAddressToCrime < ActiveRecord::Migration
  def change
    add_column :crimes, :address, :string
  end
end
