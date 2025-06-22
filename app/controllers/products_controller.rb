class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [ :index, :show ]

  def index
    @products = Product.all

    # render json: @products
    render :index
  end

  def show
    @product = Product.find(params[:id])

    # render json: @product
    render :show
  end

  def create
    @product = Product.create(
      product_number: params["product_number"],
      name: params["name"],
      price: params["price"],
      description: params["description"],
      supplier_id: params["supplier_id"]
    )

    if @product.valid?
      # render json: @product
      render :show
    else
      render json: {errors: @product.errors.full_messages}
    end
  end

  def update
    @product = Product.find(params["id"])

    @product.update(
      product_number: params["product_number"] || @product.product_number,
      name: params["name"] || @product.name,
      price: params["price"] || @product.price,
      description: params["description"] || @product.description,
      supplier_id: params["supplier_id"] || @product.supplier_id
    )

    if @product.valid?
      # render json: @product
      render :show
    else
      render json: { errors: @product.errors.full_messages }
    end
  end

  def destroy
    @product = Product.find(params["id"])

    render @product.destroy
  end
end
