class Store < ApplicationRecord
  has_many :product_stores, dependent: :destroy
end

# == Schema Information
#
# Table name: stores
#
#  id          :bigint           not null, primary key
#  address     :string
#  annex       :integer
#  status      :integer
#  url_address :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
