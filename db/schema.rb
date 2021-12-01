# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_01_114558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "housing_requests", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "status"
    t.bigint "room_id", null: false
    t.bigint "seeker_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_housing_requests_on_room_id"
    t.index ["seeker_id"], name: "index_housing_requests_on_seeker_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "summary"
    t.string "address"
    t.string "housing_type"
    t.string "giveaway_description"
    t.boolean "has_books"
    t.boolean "has_personal_bathroom"
    t.boolean "has_tv"
    t.boolean "has_internet"
    t.bigint "host_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.index ["host_id"], name: "index_rooms_on_host_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "description"
    t.string "profile_image"
    t.string "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "housing_requests", "rooms"
  add_foreign_key "housing_requests", "users", column: "seeker_id"
  add_foreign_key "rooms", "users", column: "host_id"
end
