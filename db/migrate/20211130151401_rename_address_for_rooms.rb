class RenameAddressForRooms < ActiveRecord::Migration[6.0]
  def change
    rename_column :rooms, :adress, :address
  end
end
