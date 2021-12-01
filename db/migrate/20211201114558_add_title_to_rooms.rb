class AddTitleToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :title, :string
  end
end
