class RemoveCityFromStations < ActiveRecord::Migration[5.2]
  def change
    remove_column :stations, :city, :string
  end
end
