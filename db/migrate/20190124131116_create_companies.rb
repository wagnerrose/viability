class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :fantasy_name
      t.string :cnpj
      t.string :sap
      t.references :regional, foreign_key: true

      t.timestamps
    end
  end
end
