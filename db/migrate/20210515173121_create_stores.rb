class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :address
      t.string :url_address
      t.integer :annex
      t.integer :status

      t.timestamps
    end
  end
end
