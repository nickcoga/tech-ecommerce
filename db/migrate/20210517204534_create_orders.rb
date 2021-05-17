class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :user_address, null: false, foreign_key: true
      t.decimal :total_price, precision: 7, scale: 2
      t.datetime :paid_at
      t.integer :status

      t.timestamps
    end
  end
end
