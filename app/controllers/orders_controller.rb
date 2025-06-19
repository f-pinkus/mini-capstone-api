class OrdersController < ApplicationController
    def index
    # figure out how to have it so a user only seeds their orders
  end

  def create
    @order = Order.new(
      user_id: current_user.user_id, 
      product_id: params[:product_id]
      quantity: params[:quantity],
      subtotal: params[:subtotal], # should be based on the cost of the product * the quantity
      tax: params[:tax], # hardcode to 8% * subtotal
      total: params[:total], # tax + subtotal
    )

    if @order.save
      render json: @order, status: :created
    else
      render json: { errors: @order.errors.full_messages }, status: :bad_request
    end
  end

  def show
    # make sure that a user can only see their orders (for example if they try to view an order that isn't there's, it should error saying that isn't their order or something)
  end

end
