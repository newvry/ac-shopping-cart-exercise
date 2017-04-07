class Product < ApplicationRecord

  mount_uploader :image, ImageUploader

  has_many :orders
  has_many :carts, :through => :orders

end
