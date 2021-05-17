class ProductStore < ApplicationRecord
  belongs_to :product
  belongs_to :store
end

# == Schema Information
#
# Table name: product_stores
#
#  id         :bigint           not null, primary key
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :bigint           not null
#  store_id   :bigint           not null
#
# Indexes
#
#  index_product_stores_on_product_id  (product_id)
#  index_product_stores_on_store_id    (store_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#  fk_rails_...  (store_id => stores.id)
#
