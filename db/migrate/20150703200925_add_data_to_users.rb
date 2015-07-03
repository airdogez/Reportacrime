class AddDataToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :phone, :integer
    add_column :users, :lastname, :string, null: false
    add_column :users, :address, :text
    add_reference :users, :district, index: true
  end
end
