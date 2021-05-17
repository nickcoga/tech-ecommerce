class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.references :user, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.references :user_address, null: false, foreign_key: true
      t.integer :invoice_number
      t.decimal :sub_total, precision: 7, scale: 2
      t.decimal :igv, precision: 5, scale: 2
      t.decimal :net_total, precision: 7, scale: 2
      t.integer :status
      t.integer :ruc

      t.timestamps
      t.index :invoice_number, unique: true
    end
  end
end
