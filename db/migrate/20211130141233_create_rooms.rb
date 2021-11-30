class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :summary
      t.string :adress
      t.string :housing_type
      t.string :giveaway_description
      t.boolean :has_books
      t.boolean :has_personal_bathroom
      t.boolean :has_tv
      t.boolean :has_internet
      t.references :host, null: false, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
