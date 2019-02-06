class CreateConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :connections do |t|
      t.string :cluster_name
      t.integer :arc_number
      t.references :equipment, foreign_key: true

      t.timestamps
    end
  end
end
