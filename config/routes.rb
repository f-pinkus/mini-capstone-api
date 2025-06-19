Rails.application.routes.draw do
  get "/products", controller: "products", action: "index"
  get "/products/:id", controller: "products", action: "show"
  post "/products", controller: "products", action: "create"
  patch "/products/:id", controller: "products", action: "update"
  delete "/products/:id", controller: "products", action: "destroy"

  get "/suppliers", controller: "suppliers", action: "index"
  get "/suppliers/:id", controller: "suppliers", action: "show"
  post "/suppliers", controller: "suppliers", action: "create"
  patch "/suppliers/:id", controller: "suppliers", action: "update"
  delete "/suppliers/:id", controller: "suppliers", action: "destroy"

  get "/images", controller: "images", action: "index"
  get "/images/:id", controller: "images", action: "show"
  post "/images", controller: "images", action: "create"

  post "/signup", controller: "users", action: "create"

  post "/login", controller: "sessions", action: "create"
  delete "/logout", controller: "sessions", action: "destroy"

  get "/orders", controller: "orders", action: "index"
  get "/orders/:id", controller: "orders", action: "show"
  post "/orders", controller: "orders", action: "create"
end
