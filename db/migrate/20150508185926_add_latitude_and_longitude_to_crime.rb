class AddLatitudeAndLongitudeToCrime< ActiveRecord::Migration
  def change
    add_column :crimes, :latitude, :float
    add_column :crimes, :longitude, :float
  end
end
