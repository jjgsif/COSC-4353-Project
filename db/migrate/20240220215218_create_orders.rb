class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.integer :clientID
      t.decimal :gallonsRequested
      t.decimal :profitMargin
      t.string :deliveryAddress
      t.string :city
      t.string :state
      t.integer :zip
      t.date :deliveryDate

      t.timestamps
    end
  end
end
