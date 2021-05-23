class User < ApplicationRecord
  has_secure_token
  has_secure_password

  validates :email, presence: true, uniqueness: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/ }
  validates :password, length: { minimum: 6 }, allow_nil: true

  has_many :user_addresses, dependent: :destroy
  has_many :order, dependent: :destroy
  has_many :invoices, dependent: :destroy

  # def invalidate_token
  #   update(token: nil)
  # end

  # def self.valid_login?(email, password)
  #   user = find_by(email: email)

  #   user&.authenticate(password)
  # end
end

# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string
#  name            :string
#  password_digest :string
#  phone           :string
#  status          :integer
#  token           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#  index_users_on_token  (token) UNIQUE
#
