class CreateEquipmentConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment_connections do |t|
      t.string :local_interface
      t.string :remote_equipment
      t.string :remote_interface
      t.integer :vlan
      t.integer :direction
      t.integer :speed
      t.references :connection, foreign_key: true

      t.timestamps
    end
  end
end
