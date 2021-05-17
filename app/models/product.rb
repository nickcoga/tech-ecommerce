class Product < ApplicationRecord
  belongs_to :category
  has_many :product_stores, dependent: :destroy
  has_many :offers, dependent: :destroy
  has_many :order_products, dependent: :destroy
end

# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  brand       :string
#  model       :string
#  name        :string
#  unit_price  :decimal(7, 2)
#  weight      :decimal(5, 2)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
