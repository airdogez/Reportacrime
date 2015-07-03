class CreateCrimes < ActiveRecord::Migration
  def change
    create_table :crimes do |t|
      t.string :name
      t.text :description
      t.references :category, index: true
      t.references :user, index: true
      t.references :district, index: true
      t.text :details
      t.references :status, index: true

      t.timestamps
    end
  end
end
