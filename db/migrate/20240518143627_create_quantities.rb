class CreateQuantities < ActiveRecord::Migration[7.1]
  def change
    create_table :quantities do |t|
      t.decimal :price, precision: 5, scale: 2
      t.integer :number
      t.date :date_received
      t.string :condition
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
