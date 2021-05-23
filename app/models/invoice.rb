class Invoice < ApplicationRecord
  belongs_to :user
  belongs_to :order
  belongs_to :user_address
end

# == Schema Information
#
# Table name: invoices
#
#  id              :bigint           not null, primary key
#  igv             :decimal(5, 2)
#  invoice_number  :integer
#  net_total       :decimal(7, 2)
#  ruc             :integer
#  status          :integer
#  sub_total       :decimal(7, 2)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  order_id        :bigint           not null
#  user_address_id :bigint           not null
#  user_id         :bigint           not null
#
# Indexes
#
#  index_invoices_on_invoice_number   (invoice_number) UNIQUE
#  index_invoices_on_order_id         (order_id)
#  index_invoices_on_user_address_id  (user_address_id)
#  index_invoices_on_user_id          (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (order_id => orders.id)
#  fk_rails_...  (user_address_id => user_addresses.id)
#  fk_rails_...  (user_id => users.id)
#
