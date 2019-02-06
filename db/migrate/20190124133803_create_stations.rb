class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :code
      t.string :address
      t.string :city
      t.string :assignor
      t.integer :status
      t.integer :type
      t.decimal :latitude, precision: 15, scale: 13
      t.decimal :longitude, precision: 15, scale: 13
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
