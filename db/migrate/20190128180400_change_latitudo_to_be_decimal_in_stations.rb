class ChangeLatitudoToBeDecimalInStations < ActiveRecord::Migration[5.2]
  def up
  change_column :stations, :latitude, :float
    change_column :stations, :longitude, :float
  end

  def down
    change_column :stations, :latitude, :decimal, precision: 15, scale: 13
    change_column :stations, :latitude, :decimal, precision: 15, scale: 13

  end
end
