Rails.application.routes.draw do
  get "/allproducts", controller: "products", action: "all_products"
end
