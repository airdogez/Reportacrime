class CreateCrimeImages < ActiveRecord::Migration
  def change
    create_table :crime_images do |t|
      t.text :description
      t.references :crime, index: true

      t.timestamps
    end
  end
end
