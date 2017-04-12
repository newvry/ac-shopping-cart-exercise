class AddColumnToOrders < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :product_amount, :integer, default: 0
  end
end
