class AddPriceToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :Price, :decimal
  end
end
