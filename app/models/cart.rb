class Cart < ApplicationRecord
  belongs_to :user, optional: true
  has_many :orders
  has_many :products, :through => :orders

  def total_orders
    self.orders.map{ |order| order.product_amount }.sum
  end
end
