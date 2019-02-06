class AddCityReferencesToStations < ActiveRecord::Migration[5.2]
  def change
    add_reference :stations, :county, foreign_key: true
  end
end
