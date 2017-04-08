class CartsController < ApplicationController
  before_action :authenticate_user!

  def new
    @cart = current_cart
  end

  def create
    current_cart.update(cart_params)
    current_cart.user = current_user
    if current_cart.save
      UserMailer.cart_confirmed(current_cart).deliver_later!
      @cart = nil
      session[:cart_id] = nil
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def cart_params
      params.require(:cart).permit(:receiver, :phone_number, :address, :payment)
    end
  
end
