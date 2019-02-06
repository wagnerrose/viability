class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :ip_address
      t.string :firmware
      t.text :description
      t.integer :type
      t.integer :status
      t.references :station, foreign_key: true

      t.timestamps
    end
  end
end
