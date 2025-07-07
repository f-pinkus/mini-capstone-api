# Clear existing data (optional, for a clean slate)
User.destroy_all
Supplier.destroy_all
Product.destroy_all
Category.destroy_all
CategoryProduct.destroy_all
Image.destroy_all

# Users
User.create!(name: "Faigy", email: "faigy@example.com", password: "password", admin: true)
User.create!(name: "Test", email: "test@example.com", password: "password")

# Suppliers
Supplier.create!(name: "Zara", email: "zara@example.com", phone_number: "123456789")
Supplier.create!(name: "H&M", email: "hm@example.com", phone_number: "987654321")

# Products (Clothing)
Product.create!(supplier_id: 1, quantity: 50, name: "Classic White T-Shirt", price: 20, description: "Soft cotton, slim fit t-shirt that goes with everything.")
Product.create!(supplier_id: 1, quantity: 30, name: "Denim Jacket", price: 60, description: "Timeless denim jacket with a relaxed fit.")
Product.create!(supplier_id: 2, quantity: 40, name: "Black Skinny Jeans", price: 45, description: "Sleek and versatile black jeans for everyday wear.")
Product.create!(supplier_id: 2, quantity: 20, name: "Floral Summer Dress", price: 55, description: "Lightweight and breezy with a floral print for summer vibes.")
Product.create!(supplier_id: 1, quantity: 25, name: "Hooded Sweatshirt", price: 35, description: "Cozy hoodie with a front pocket and adjustable drawstrings.")
Product.create!(supplier_id: 2, quantity: 15, name: "Wool Coat", price: 120, description: "Elegant long wool coat for the cold season.")
Product.create!(supplier_id: 1, quantity: 10, name: "Leather Boots", price: 95, description: "Stylish black ankle boots with real leather.")

# Categories
Category.create!(name: "Tops")
Category.create!(name: "Bottoms")
Category.create!(name: "Outerwear")
Category.create!(name: "Footwear")

# Category Products
CategoryProduct.create!(category_id: 1, product_id: 1)
CategoryProduct.create!(category_id: 1, product_id: 4)
CategoryProduct.create!(category_id: 1, product_id: 5)
CategoryProduct.create!(category_id: 2, product_id: 3)
CategoryProduct.create!(category_id: 3, product_id: 2)
CategoryProduct.create!(category_id: 3, product_id: 6)
CategoryProduct.create!(category_id: 4, product_id: 7)

# Images (real, working URLs)
Image.create!(product_id: 1, url: "https://allwear.com/cdn/shop/files/ALLWEAR-SUSTAINABLECREWNECKSHORTSLEEVESHIRTFRONT-WHITE-01_a100a318-2b55-44e9-8107-ed6ffb6a44db_1946x.jpg?v=1695031010")
Image.create!(product_id: 2, url: "https://m.media-amazon.com/images/I/71IHhfXSpNL._AC_SX679_.jpg")
Image.create!(product_id: 3, url: "https://m.media-amazon.com/images/I/61IWf-9kCfL._AC_UL640_FMwebp_QL65_.jpg")
Image.create!(product_id: 4, url: "https://m.media-amazon.com/images/I/71LdjjRk9WL._AC_UL640_FMwebp_QL65_.jpg")
Image.create!(product_id: 5, url: "https://m.media-amazon.com/images/I/515LlshUIsL._AC_UL640_FMwebp_QL65_.jpg")
Image.create!(product_id: 6, url: "https://m.media-amazon.com/images/I/617R-viHhxL._AC_UL640_FMwebp_QL65_.jpg")
Image.create!(product_id: 7, url: "https://m.media-amazon.com/images/I/71KlLrD9avL._AC_UL640_FMwebp_QL65_.jpg")