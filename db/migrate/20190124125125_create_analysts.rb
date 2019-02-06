class CreateAnalysts < ActiveRecord::Migration[5.2]
  def change
    create_table :analysts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :role
      t.references :regional, foreign_key: true

      t.timestamps
    end
  end
end
