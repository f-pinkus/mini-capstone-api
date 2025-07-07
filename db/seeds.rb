puts "Clearing existing data..."
CategoryProduct.destroy_all
Category.destroy_all
Image.destroy_all
Product.destroy_all
Supplier.destroy_all
User.destroy_all
CartedProduct.destroy_all
Order.destroy_all

puts "Creating suppliers..."
suppliers = Supplier.create!([
  { name: "H&M Kids", email: "contact@hm.com", phone_number: "123-456-7890" },
  { name: "Zara Girls", email: "support@zara.com", phone_number: "234-567-8901" },
  { name: "Gap Kids", email: "help@gapkids.com", phone_number: "345-678-9012" }
])

puts "Creating users..."
users = User.create!([
  { name: "Alice", email: "alice@example.com", password: "password", admin: false },
  { name: "Bob", email: "bob@example.com", password: "password", admin: false },
  { name: "Carol", email: "carol@example.com", password: "password", admin: false },
  { name: "Admin User", email: "admin@example.com", password: "password", admin: true }
])

puts "Creating categories..."
categories = Category.create!([
  { name: "Tops" },
  { name: "Outerwear" },
  { name: "Bottoms" },
  { name: "Dresses" },
  { name: "Accessories" },
  { name: "Footwear" }
])

puts "Creating products and images..."

products_data = [
  {
    name: "Classic Basic White T-Shirt",
    price: 15,
    description: "Soft and breathable cotton white t-shirt, perfect for everyday wear.",
    image_url: "https://m.media-amazon.com/images/I/61ocI0uroiL._AC_UL640_FMwebp_QL65_.jpg",
    categories: ["Tops"]
  },
  {
    name: "Stylish Denim Jacket",
    price: 45,
    description: "Durable denim jacket with a modern fit, great for layering.",
    image_url: "https://m.media-amazon.com/images/I/717yolZkehL._AC_UL640_FMwebp_QL65_.jpg",
    categories: ["Outerwear"]
  },
  {
    name: "Black Skinny Jeans",
    price: 35,
    description: "Comfortable black skinny jeans with stretch for all-day mobility.",
    image_url: "https://m.media-amazon.com/images/I/61q9JoVlluL._AC_UL640_FMwebp_QL65_.jpg",
    categories: ["Bottoms"]
  },
  {
    name: "Elegant Floral Dress",
    price: 50,
    description: "Flowy floral dress with a charming pattern, ideal for special occasions.",
    image_url: "https://m.media-amazon.com/images/I/71pFJWSITTL._AC_UL640_FMwebp_QL65_.jpg",
    categories: ["Dresses"]
  },
  {
    name: "Cozy Purple Hoodie",
    price: 30,
    description: "Warm and comfortable purple hoodie, perfect for casual days.",
    image_url: "https://m.media-amazon.com/images/I/71g5lueeDPL._AC_UL640_FMwebp_QL65_.jpg",
    categories: ["Tops", "Outerwear"]
  },
  {
    name: "Soft Knit Beanie",
    price: 18,
    description: "Warm knit beanie to keep heads cozy during colder months.",
    image_url: "https://m.media-amazon.com/images/I/8148xxoqAlL._AC_SX679_.jpg",
    categories: ["Accessories"]
  },
  {
    name: "Classic Wool Coat",
    price: 80,
    description: "Elegant wool coat for warmth and style during winter.",
    image_url: "https://m.media-amazon.com/images/I/71BzB6sROeL._AC_UL640_FMwebp_QL65_.jpg",
    categories: ["Outerwear"]
  },
  {
    name: "Durable Leather Boots",
    price: 70,
    description: "Sturdy leather boots with excellent traction and comfort.",
    image_url: "https://m.media-amazon.com/images/I/81qzKy+sMkL._AC_SY695_.jpg",
    categories: ["Footwear"]
  },
  {
    name: "Casual Striped Polo Shirt",
    price: 25,
    description: "Classic striped polo shirt made from soft cotton fabric.",
    image_url: "https://m.media-amazon.com/images/I/71k1xFFs05L._AC_UL640_FMwebp_QL65_.jpg",
    categories: ["Tops"]
  },
  {
    name: "Warm Crewneck Sweater",
    price: 40,
    description: "Comfortable crewneck sweater, perfect for layering.",
    image_url: "https://m.media-amazon.com/images/I/81Uu-C0ZStL._AC_UL640_FMwebp_QL65_.jpg",
    categories: ["Tops"]
  },
  {
    name: "Floral Midi Skirt",
    price: 38,
    description: "Chic floral midi skirt with a flattering silhouette.",
    image_url: "https://m.media-amazon.com/images/I/81OgHehSwQL._AC_UL640_FMwebp_QL65_.jpg",
    categories: ["Bottoms"]
  },
  {
    name: "Lightweight Rain Jacket",
    price: 55,
    description: "Water-resistant rain jacket to keep you dry in style.",
    image_url: "https://m.media-amazon.com/images/I/71yOQLfsxqL._AC_UL640_FMwebp_QL65_.jpg",
    categories: ["Outerwear"]
  },
  {
    name: "Sporty Sneakers",
    price: 45,
    description: "Comfortable and stylish sneakers for everyday adventures.",
    image_url: "https://m.media-amazon.com/images/I/71hNvOSGQlL._AC_UL640_FMwebp_QL65_.jpg",
    categories: ["Footwear"]
  },
  {
    name: "Classic Black Skirt",
    price: 30,
    description: "Versatile black skirt suitable for casual and formal wear.",
    image_url: "https://m.media-amazon.com/images/I/61B-3xILqNL._AC_UL640_FMwebp_QL65_.jpg",
    categories: ["Bottoms"]
  }
]

products = []

products_data.each_with_index do |product_data, index|
  supplier = suppliers[index % suppliers.length]

  product = Product.create!(
    name: product_data[:name],
    price: product_data[:price],
    description: product_data[:description],
    supplier_id: supplier.id,
    quantity: 100
  )

  Image.create!(
    url: product_data[:image_url],
    product_id: product.id
  )

  # Link categories
  product_data[:categories].each do |cat_name|
    category = categories.find { |c| c.name == cat_name }
    if category
      CategoryProduct.create!(product_id: product.id, category_id: category.id)
    end
  end

  products << product
  puts "Created product: #{product.name} (Supplier: #{supplier.name})"
end

puts "Creating carted products (sample for users)..."
# For demo purposes, create some carted products for user Alice
user_alice = users.find { |u| u.name == "Alice" }
sample_order = Order.create!(
  user_id: user_alice.id,
  subtotal: 100,
  tax: 8,
  total: 108
)

CartedProduct.create!([
  { user_id: user_alice.id, product_id: products.first.id, quantity: 2, status: "carted" },
  { user_id: user_alice.id, product_id: products.last.id, quantity: 1, status: "purchased", order_id: sample_order.id }
])

puts "Seeding complete!"
