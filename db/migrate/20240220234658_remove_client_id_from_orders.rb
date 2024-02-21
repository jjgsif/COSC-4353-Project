class RemoveClientIdFromOrders < ActiveRecord::Migration[7.1]
  def up
    remove_column :orders, :clientID
  end
end
