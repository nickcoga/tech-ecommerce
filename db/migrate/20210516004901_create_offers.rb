class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.references :product, null: false, foreign_key: true
      t.datetime :started_at
      t.datetime :ended_at
      t.decimal :discount, precision: 5, scale: 2
      t.integer :status

      t.timestamps
    end
  end
end
