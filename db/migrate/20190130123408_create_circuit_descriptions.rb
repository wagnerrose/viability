class CreateCircuitDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :circuit_descriptions do |t|
      t.string :access_station
      t.string :client_station
      t.string :access_switch
      t.string :client_switch
      t.string :delivery_point
      t.string :access_type
      t.string :access_provider
      t.string :provider_info
      t.string :address
      t.string :dgo
      t.string :approach
      t.string :fiber_number
      t.string :fiber_assignor
      t.string :ring
      t.integer :point
      t.float :latitude
      t.float :longitude
      t.references :circuit, foreign_key: true
      t.references :station, foreign_key: true
      t.references :county, foreign_key: true
      t.references :state, foreign_key: true
      t.references :equipment, foreign_key: true

      t.timestamps
    end
  end
end
