class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|

      t.integer :user_id
      t.integer :total_price
      t.string :payment
      t.string :order_status
      t.string :money_status


      t.timestamps
    end
  end
end
