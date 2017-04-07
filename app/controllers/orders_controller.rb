class OrdersController < ApplicationController

  def create
    product = Product.find(params[:product_id])
    order = current_cart.orders.new(product_id: product.id)
    order.save
    redirect_to root_path
  end

  def current_cart
    return @cart if @cart
    if session[:cart_id]
      @cart = Cart.find_by_id(session[:cart_id])
    else
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
    @cart
  end

end
