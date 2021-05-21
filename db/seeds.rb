# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


if Rails.env.development?
  puts "Deleting current data"
  Store.destroy_all
  Category.destroy_all
  Product.destroy_all
  Offer.destroy_all

  puts "Start seeding"

  Store.create!(address: 'Lima District', url_address: "https://www.mystore.com")

  category1 = Category.create!(name: 'Computers', status: 1)
  subcategory_1_1 = Category.create!(name: 'Laptops', status: 1, parent_category: category1)
  subcategory_1_2 = Category.create!(name: 'Monitors', status: 1, parent_category: category1)
  subcategory_1_3 = Category.create!(name: 'Keyboards', status: 1, parent_category: category1)

  category2 = Category.create!(name: 'Phones & Accessories', status: 1)
  subcategory_2_1 = Category.create!(name: 'Cell Phones', status: 1, parent_category: category2)
  subcategory_2_2 = Category.create!(name: 'Cases', status: 1, parent_category: category2)
  subcategory_2_3 = Category.create!(name: 'Chargers', status: 1, parent_category: category2)
  subcategory_2_4 = Category.create!(name: 'Smartwatches', status: 1, parent_category: category2)

  category3 = Category.create!(name: 'TVs', status: 1)
  subcategory_3_1 = Category.create!(name: 'Home Theaters', status: 1, parent_category: category3)
  subcategory_3_2 = Category.create!(name: 'Smart TVs', status: 1, parent_category: category3)
  subcategory_3_2_1 = Category.create!(name: 'OLED TVs', status: 1, parent_category: subcategory_3_2)
  subcategory_3_2_2 = Category.create!(name: 'QLED 8K', status: 1, parent_category: subcategory_3_2)
  subcategory_3_2_3 = Category.create!(name: 'Curved TVs', status: 1, parent_category: subcategory_3_2)


  product_1_1 = Product.create!(name: "Macbook", unit_price: 1000, brand: "Apple", weight: 1.4, model: "M1 2020", category: subcategory_1_1)
  product_1_2 = Product.create!(name: "Dell Inspiron 3000", unit_price: 1300, brand: "Dell", weight: 1.6, model: "N5030", category: subcategory_1_1)
  product_1_3 = Product.create!(name: "Aspire 5", unit_price: 1345, brand: "Acer", weight: 1.6, model: "A515-43-R19L", category: subcategory_1_1)

  product_1_4 = Product.create!(name: "Acer SB220Q", unit_price: 1215, brand: "Acer", weight: 2.6, model: "SB220Q", category: subcategory_1_2)
  product_1_5 = Product.create!(name: "SAMSUNG SR35", unit_price: 1215, brand: "Samsung", weight: 2.3, model: "SAMSUNG SR35", category: subcategory_1_2)

  product_3_1 = Product.create!(name: "LG OLED65CXPUA", unit_price: 500, brand: "LG", weight: 7.52, model: "OLED65CXPUA", category: subcategory_3_2_1)


  Offer.create!(product: product_1_1, started_at: 1.week.ago, ended_at: 3.days.ago, discount: 10, status: 1)

  puts "Finish seeding"
else
  puts "Seeds do not work in other than development environment"
end
