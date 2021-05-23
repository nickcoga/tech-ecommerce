class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
end

# == Schema Information
#
# Table name: order_products
#
#  id         :bigint           not null, primary key
#  discount   :decimal(5, 2)
#  quantity   :integer
#  unit_price :decimal(7, 2)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :bigint           not null
#  product_id :bigint           not null
#
# Indexes
#
#  index_order_products_on_order_id    (order_id)
#  index_order_products_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (order_id => orders.id)
#  fk_rails_...  (product_id => products.id)
#
