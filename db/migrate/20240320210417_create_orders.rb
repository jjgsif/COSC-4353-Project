class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.decimal :gallonsRequested
      t.date :dateOrdered
      t.date :deliveryDate
      t.string :deliveryAddress
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
