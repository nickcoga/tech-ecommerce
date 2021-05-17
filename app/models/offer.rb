class Offer < ApplicationRecord
  belongs_to :product
end

# == Schema Information
#
# Table name: offers
#
#  id         :bigint           not null, primary key
#  discount   :decimal(5, 2)
#  ended_at   :datetime
#  started_at :datetime
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :bigint           not null
#
# Indexes
#
#  index_offers_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#
