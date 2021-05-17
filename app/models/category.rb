class Category < ApplicationRecord
  has_many :products, dependent: :destroy # TODO: test if this the best one for categories/subcategories/product

  belongs_to :parent_category, class_name: 'Category', optional: true
end

# == Schema Information
#
# Table name: categories
#
#  id                 :bigint           not null, primary key
#  name               :string
#  status             :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  parent_category_id :bigint
#
# Indexes
#
#  index_categories_on_parent_category_id  (parent_category_id)
#
# Foreign Keys
#
#  fk_rails_...  (parent_category_id => categories.id)
#
