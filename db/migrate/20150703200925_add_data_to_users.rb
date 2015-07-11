class AddDataToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, null: false, default: ""
    add_column :users, :phone, :string, null: false, default: ""
    add_column :users, :lastname, :string, null: false, default: ""
    add_column :users, :address, :text
    add_reference :users, :district, index: true
  end
end
