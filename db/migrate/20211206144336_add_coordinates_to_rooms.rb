class AddCoordinatesToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :latitude, :float
    add_column :rooms, :longitude, :float
  end
end
