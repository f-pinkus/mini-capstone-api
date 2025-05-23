class ProductsController < ApplicationController
  def index
    @products = Product.all

    # render json: products
    render :index
  end

  def show
    @product = Product.find(params[:id])

    # render json: product
    render :show
  end

  def create
    @product = Product.create(
      product_number: params["product_number"],
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"]
    )
  end
end
