class AddColumnsToCarts < ActiveRecord::Migration[5.0]
  def change
    add_column :carts, :receiver, :string
    add_column :carts, :phone_number, :integer
    add_column :carts, :address, :string
  end
end
