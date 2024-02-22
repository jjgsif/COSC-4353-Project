class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.string :address_one
      t.string :address_two
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
