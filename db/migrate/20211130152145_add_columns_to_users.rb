class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :description, :string
    add_column :users, :profile_image, :string
    add_column :users, :phone_number, :string
  end
end
