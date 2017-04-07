class CartsController < ApplicationController
  before_action :authenticate_user!

  def new
    @cart = current_cart
  end
  
end
