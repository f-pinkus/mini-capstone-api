Product.create([
  {product_number: 1001, name: "Fig", price: 6, image_url: "pic_of_product", description: "description of product"},
  {product_number: 1002, name: "Lychee", price: 6, image_url: "pic_of_product", description: "description of product"},
  {product_number: 1003, name: "Banana", price: 8, image_url: "pic_of_product", description: "description of product"},
  {product_number: 1004, name: "Nut", price: 9, image_url: "pic_of_product", description: "description of product"},
  {product_number: 1006, name: "Jambul", price: 4, image_url: "pic_of_product", description: "description of product"},
  {product_number: 1007, name: "Cranberry", price: 8, image_url: "pic_of_product", description: "description of product"},
  {product_number: 1008, name: "Orange", price: 4, image_url: "pic_of_product", description: "description of product"},
  {product_number: 1009, name: "Pomelo", price: 8, image_url: "pic_of_product", description: "description of product"},
  {product_number: 1010, name: "Lemon", price: 8, image_url: "pic_of_product", description: "description of product"},
  {product_number: 2001, name: "something", price: 15, image_url: "pic of something", description: nil},
  {product_number: 2001, name: "something", price: 15, image_url: "pic of something", description: nil},
  {product_number: 2002, name: "new thing", price: 25, image_url: "pic of the new thing", description: nil},
  {product_number: 1005, name: "a product", price: 8, image_url: "pic_of_product", description: "description of product"},
  {product_number: 1011, name: "A Product", price: 12, image_url: "some pic of something", description: nil}
])

Supplier.create(name: "Amazon", email: "amazon@email.com", phone_number: "243222342")
Supplier.create(name: "Think Geek", email: "thinkgeek@email.com", phone_number: "5432534")