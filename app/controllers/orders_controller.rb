class OrdersController < ApplicationController

  def index
    @orders = current_cart.orders
  end

  def create
    product = Product.find(params[:product_id])
    current_cart.add_or_update_order_amount_in_cart!(product)

    redirect_to root_path
  end
end
