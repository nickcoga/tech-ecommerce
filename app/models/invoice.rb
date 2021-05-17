class Invoice < ApplicationRecord
  belongs_to :user
  belongs_to :order
  belongs_to :user_address
end
