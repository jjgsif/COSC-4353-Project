class CreateRegisters < ActiveRecord::Migration[7.1]
  def change
    create_table :registers do |t|
      t.string :username
      t.string :password
      t.integer :clientID

      t.timestamps
    end
  end
end
