Rails.application.routes.draw do
  get "/products", controller: "index", action: "all_products"
  get "/products/:id", controller: "products", action: "show"
end
