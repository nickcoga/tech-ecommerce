class Order < ApplicationRecord
  belongs_to :user
  belongs_to :user_address
  has_many :order_products, dependent: :destroy
  has_one :invoices, dependent: :destroy

  # TODO: validate and reject if user related doesn't have address nor payment method related.
end

# == Schema Information
#
# Table name: orders
#
#  id              :bigint           not null, primary key
#  paid_at         :datetime
#  status          :integer
#  total_price     :decimal(7, 2)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_address_id :bigint           not null
#  user_id         :bigint           not null
#
# Indexes
#
#  index_orders_on_user_address_id  (user_address_id)
#  index_orders_on_user_id          (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_address_id => user_addresses.id)
#  fk_rails_...  (user_id => users.id)
#
