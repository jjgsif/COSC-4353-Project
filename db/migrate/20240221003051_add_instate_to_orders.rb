class AddInstateToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :In_State, :boolean
  end
end
