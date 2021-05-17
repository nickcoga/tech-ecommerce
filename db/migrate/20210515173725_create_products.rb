class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :unit_price, precision: 7, scale: 2
      t.string :brand
      t.decimal :weight, precision: 5, scale: 2
      t.string :model
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
