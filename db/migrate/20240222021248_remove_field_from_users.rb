class RemoveFieldFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :full_name, :string
    remove_column :users, :address_one, :string
    remove_column :users, :address_two, :string
    remove_column :users, :city, :string
    remove_column :users, :state, :string
    remove_column :users, :zip, :integer
  end
end

