class AddServicesToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :services, :string, array: true, default: []
  end
end
