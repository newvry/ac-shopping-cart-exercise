class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|

      t.integer :product_id
      t.integer :cart_id
      t.integer :product_amount

      t.timestamps
    end
  end
end
