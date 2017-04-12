class Order < ApplicationRecord
  # TODO Adjust naming

  belongs_to :product
  belongs_to :cart

end
