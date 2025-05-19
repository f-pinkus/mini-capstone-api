Rails.application.routes.draw do
  get "/allproducts", controller: "products", action: "all_products"
  get "/product1", controller: "products", action: "product1"
  get "/product2", controller: "products", action: "product2"
  get "/product3", controller: "products", action: "product3"
  get "/product4", controller: "products", action: "product4"
end
