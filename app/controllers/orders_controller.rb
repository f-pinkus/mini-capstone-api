class OrdersController < ApplicationController
  def index
    if current_user
      @orders = current_user.orders

      render json: @orders
    else
      render json: {}, status: :unauthorized
    end
  end

  def create
    if current_user

      product = Product.find(params[:product_id])

      subtotal = product.price * params[:quantity].to_i
      tax = subtotal * 0.08
      total = tax + subtotal
      
      @order = Order.new(
        user_id: current_user.id, 
        product_id: params[:product_id],
        quantity: params[:quantity],
        subtotal: subtotal,
        tax: tax,
        total: total
      )

      if @order.save
        render json: @order, status: :created
      else
        render json: { errors: @order.errors.full_messages }, status: :bad_request
      end
    else
      render json: {}, status: :unauthorized
    end
  end

  def show
    if current_user
      @order = current_user.orders.find_by(id: params[:id])

      render json: @order
    else
      render json: {}, status: :unauthorized
    end
  end
end
