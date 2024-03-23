class AddProfitMarginToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :profitMargin, :decimal
  end
end
