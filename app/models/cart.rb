class Cart < ApplicationRecord

  belongs_to :user
  #user has_many :cart

  has_many :orders
  has_many :products, :through => :orders

end
