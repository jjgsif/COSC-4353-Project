class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :clientName
      t.integer :ordersPlaced
      t.boolean :newCustomer
      t.datetime :dateJoined

      t.timestamps
    end
  end
end
