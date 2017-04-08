class UserMailer < ApplicationMailer
  def cart_confirmed(cart)
    @cart = cart
    mail to: cart.user.email, subject: "訂單確認: #{cart.id}"
  end
end
