class OrdersController < ApplicationController

  def index
    @orders = current_cart.orders.all
  end

  def create
    product = Product.find(params[:product_id])
    existed_order = current_cart.orders.find_by_product_id(product.id)
    if existed_order
      existed_order.product_amount += 1
      existed_order.save
    else
      new_order = current_cart.orders.new(product_id: product.id)
      new_order.product_amount = 1
      new_order.save
    end
    redirect_to root_path
  end

end