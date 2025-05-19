class ProductsController < ApplicationController
  def all_products
    products = Product.all

    render json: products
  end

  def product1
    product = Product.find(1)

    render json: product
  end

  def product2
    product = Product.find(2)

    render json: product
  end

  def product3
    product = Product.find(3)

    render json: product
  end

  def product4
    product = Product.find(4)

    render json: product
  end
end
