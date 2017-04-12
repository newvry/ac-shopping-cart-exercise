class Cart < ApplicationRecord
  belongs_to :user, optional: true
  has_many :orders
  has_many :products, :through => :orders

  ORDER_STATUS = { shipped: '已出貨', cancelled: '已取消', new: '新訂單' }

  def total_order_amount
    orders.map{ |order| order.product_amount }.sum
  end

  def add_or_update_order_amount_in_cart!(product)
    existing_order = orders.where(product_id: product.id).first_or_initialize
    existing_order.product_amount += 1
    existing_order.save!
  end
end
