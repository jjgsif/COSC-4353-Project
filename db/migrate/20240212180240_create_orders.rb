class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :company_name
      t.boolean :InState
      t.decimal :Profit_Margin
      t.decimal :Gallon_Rqst
      t.datetime :OrderDate


      t.timestamps
    end
  end
end
