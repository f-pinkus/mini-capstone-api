Rails.application.routes.draw do
  get "/allproducts", controller: "products", action: "all_products"
  get "/show/:id", controller: "products", action: "show"
end
