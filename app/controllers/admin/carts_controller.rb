class Admin::CartsController < ApplicationController

  def index
    @carts = Cart.all
  end

  def show
    @cart = Cart.find(params[:id])
  end

  def edit
    @cart = Cart.find(params[:id])
  end

  def update
    @cart = Cart.find(params[:id])
    if @cart.update(cart_params)
      redirect_to admin_cart_path(@cart)
    else
      render :back
    end
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
    redirect_to admin_carts_path
  end

  private

  def cart_params
    params.require(:cart).permit(:total_price,
                                 :payment,
                                 :order_status,
                                 :money_status,
                                 :receiver,
                                 :phone_number,
                                 :address)
  end

end
