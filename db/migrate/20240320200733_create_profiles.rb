class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :addressOne
      t.string :addressTwo
      t.integer :zipcode
      t.string :state
      t.string :fullName

      t.timestamps
    end
  end
end
