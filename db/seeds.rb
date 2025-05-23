i = 1001
10.times do
  product = Product.new(
    product_number: i,
    name: "something",
    price: rand(6..100),
    image_url: "pic_of_something",
    description: "description of something"
  )
  product.save
  i += 1
end