class CreateCircuits < ActiveRecord::Migration[5.2]
  def change
    create_table :circuits do |t|
      t.string :number
      t.string :description
      t.string :contract
      t.integer :status
      t.integer :routing
      t.integer :asn
      t.integer :bandwidth
      t.integer :bandwidth_activated
      t.integer :sap
      t.date :activation_date
      t.references :company, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
