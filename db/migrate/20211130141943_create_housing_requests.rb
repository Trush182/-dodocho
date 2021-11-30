class CreateHousingRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :housing_requests do |t|
      t.date :start_date
      t.date :end_date
      t.string :status
      t.references :room, null: false, foreign_key: true
      t.references :seeker, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
