class AddPersonalInfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :lastname, :string
    add_column :users, :address, :text
    add_reference :users, :district, index: true
  end
end
