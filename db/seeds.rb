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
  # TODO: fix destroy_all order or search how to delete all records from all tables in one command
  ProductStore.destroy_all
  OrderProduct.destroy_all
  Product.destroy_all
  Offer.destroy_all
  Category.destroy_all
  Order.destroy_all
  Invoice.destroy_all
  UserAddress.destroy_all
  User.destroy_all
  Store.destroy_all

  puts "Start seeding"

  puts "creating stores"
  store1 = Store.create!(address: 'Lima District', url_address: "https://www.mystore.com")

  puts "creating categories & subcategories"
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

  puts "creating products"
  unit_price_1_1 = 1000
  unit_price_3_1 = 500
  unit_price_1_4 = 1215
  unit_price_1_3 = 1345

  product_1_1 = Product.create!(name: "Macbook", unit_price: unit_price_1_1, brand: "Apple", weight: 1.4, model: "M1 2020", category: subcategory_1_1)
  product_1_2 = Product.create!(name: "Dell Inspiron 3000", unit_price: 1300, brand: "Dell", weight: 1.6, model: "N5030", category: subcategory_1_1)
  product_1_3 = Product.create!(name: "Aspire 5", unit_price: unit_price_1_3, brand: "Acer", weight: 1.6, model: "A515-43-R19L", category: subcategory_1_1)

  product_1_4 = Product.create!(name: "Acer SB220Q", unit_price: unit_price_1_4, brand: "Acer", weight: 2.6, model: "SB220Q", category: subcategory_1_2)
  product_1_5 = Product.create!(name: "SAMSUNG SR35", unit_price: 1215, brand: "Samsung", weight: 2.3, model: "SAMSUNG SR35", category: subcategory_1_2)

  product_3_1 = Product.create!(name: "LG OLED65CXPUA", unit_price: unit_price_3_1, brand: "LG", weight: 7.52, model: "OLED65CXPUA", category: subcategory_3_2_1)

  puts "creating product_stores"
  ProductStore.create!(product: product_1_1, store: store1, quantity: 3)
  ProductStore.create!(product: product_1_2, store: store1, quantity: 1)
  ProductStore.create!(product: product_1_3, store: store1, quantity: 5)
  ProductStore.create!(product: product_1_4, store: store1, quantity: 0)
  ProductStore.create!(product: product_1_5, store: store1, quantity: 2)
  ProductStore.create!(product: product_3_1, store: store1, quantity: 3)

  puts "creating offers"
  discount1 = 10

  Offer.create!(product: product_1_1, started_at: 3.days.ago, ended_at: 3.days.after, discount: discount1, status: 1)
  Offer.create!(product: product_1_2, started_at: 1.week.ago, ended_at: 3.days.ago, discount: 15, status: 1)

  puts "creating users"
  user1 = User.create!(email: "john.doe@gmail.com", name: "John Doe", password_digest: "123456", phone: "+1 912345678", status: 1, token: "a token")
  user2 = User.create!(email: "juan.perez@hey.com", name: "Juan Perez", password_digest: "654321", phone: "+51 912345678", status: 1, token: "another token")

  puts "creating user addresses"
  address1_1 = UserAddress.create!(address: "742 Evergreen Terrace", user: user1)
  address1_2 = UserAddress.create!(address: "Parque Central de Miraflores", user: user1)
  address2_1 = UserAddress.create!(address: "Lima Centro", user: user2)

  puts "creating orders"
  order_status_pending = 1
  order_status_paid = 2
  order_status_completed = 4

  quantity_order_2_1 = 2

  total_price_1_1 = unit_price_1_1 * (discount1/100) + unit_price_3_1
  total_price_2_1 = quantity_order_2_1 * unit_price_1_3

  order1_1 = Order.create!(user: user1, user_address: address1_1, total_price: total_price_1_1, paid_at: nil, status: order_status_pending)
  order1_2 = Order.create!(user: user1, user_address: address1_2, total_price: unit_price_1_4, paid_at: 3.days.ago, status: order_status_paid)

  order2_1 = Order.create!(user: user2, user_address: address2_1, total_price: total_price_2_1, paid_at: 5.days.ago, status: order_status_completed)

  puts "creating order_products"
  OrderProduct.create!(order: order1_1, product: product_1_1, quantity: 1, unit_price: unit_price_1_1, discount: discount1)
  OrderProduct.create!(order: order1_1, product: product_3_1, quantity: 1, unit_price: unit_price_3_1, discount: 0)

  OrderProduct.create!(order: order1_2, product: product_1_4, quantity: 1, unit_price: unit_price_1_4, discount: 0)

  OrderProduct.create!(order: order1_2, product: product_1_3, quantity: quantity_order_2_1, unit_price: unit_price_1_3, discount: 0)

  puts "creating invoices"
  invoice_status_paid = 2
  igv = 18
  subtotal = total_price_1_1 * (1 - igv/100.to_f)

  Invoice.create!(igv: igv, invoice_number: 1, net_total: total_price_2_1, ruc: 1081818181, status: invoice_status_paid, sub_total: subtotal, order: order2_1, user_address: address2_1, user: user2)

  puts "Finish seeding"
else
  puts "Seeds do not work in other than development environment"
end
