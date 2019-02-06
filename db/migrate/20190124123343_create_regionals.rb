class CreateRegionals < ActiveRecord::Migration[5.2]
  def change
    create_table :regionals do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
