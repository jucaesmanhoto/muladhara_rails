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

ActiveRecord::Schema.define(version: 2020_06_30_121014) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.string "zip_code"
    t.string "street"
    t.integer "number"
    t.string "complement"
    t.string "neighborhood"
    t.string "city"
    t.string "state"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.decimal "price"
    t.bigint "interagent_id", null: false
    t.bigint "professional_id", null: false
    t.bigint "room_id", null: false
    t.bigint "available_time_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["available_time_id"], name: "index_appointments_on_available_time_id"
    t.index ["interagent_id"], name: "index_appointments_on_interagent_id"
    t.index ["professional_id"], name: "index_appointments_on_professional_id"
    t.index ["room_id"], name: "index_appointments_on_room_id"
  end

  create_table "available_times", force: :cascade do |t|
    t.datetime "initial_timestamp"
    t.datetime "final_timestamp"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "especialties", force: :cascade do |t|
    t.string "especialty_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interagents", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "birth_date"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_interagents_on_user_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "place_addresses", force: :cascade do |t|
    t.bigint "address_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_place_addresses_on_address_id"
    t.index ["user_id"], name: "index_place_addresses_on_user_id"
  end

  create_table "place_pictures", force: :cascade do |t|
    t.bigint "place_id", null: false
    t.bigint "picture_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["picture_id"], name: "index_place_pictures_on_picture_id"
    t.index ["place_id"], name: "index_place_pictures_on_place_id"
  end

  create_table "place_professionals", force: :cascade do |t|
    t.bigint "place_id", null: false
    t.bigint "professional_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["place_id"], name: "index_place_professionals_on_place_id"
    t.index ["professional_id"], name: "index_place_professionals_on_professional_id"
  end

  create_table "place_telephones", force: :cascade do |t|
    t.bigint "telephone_id", null: false
    t.bigint "place_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["place_id"], name: "index_place_telephones_on_place_id"
    t.index ["telephone_id"], name: "index_place_telephones_on_telephone_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_places_on_user_id"
  end

  create_table "professional_addresses", force: :cascade do |t|
    t.bigint "professional_id", null: false
    t.bigint "address_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_professional_addresses_on_address_id"
    t.index ["professional_id"], name: "index_professional_addresses_on_professional_id"
  end

  create_table "professional_available_times", force: :cascade do |t|
    t.bigint "professional_id", null: false
    t.bigint "available_time_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["available_time_id"], name: "index_professional_available_times_on_available_time_id"
    t.index ["professional_id"], name: "index_professional_available_times_on_professional_id"
  end

  create_table "professional_telephones", force: :cascade do |t|
    t.bigint "professional_id", null: false
    t.bigint "telephone_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["professional_id"], name: "index_professional_telephones_on_professional_id"
    t.index ["telephone_id"], name: "index_professional_telephones_on_telephone_id"
  end

  create_table "professionals", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "birth_date"
    t.string "sex"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_professionals_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "room_available_times", force: :cascade do |t|
    t.bigint "room_id", null: false
    t.bigint "available_time_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["available_time_id"], name: "index_room_available_times_on_available_time_id"
    t.index ["room_id"], name: "index_room_available_times_on_room_id"
  end

  create_table "room_features", force: :cascade do |t|
    t.string "feature_name"
    t.bigint "room_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_room_features_on_room_id"
  end

  create_table "room_pictures", force: :cascade do |t|
    t.bigint "room_id", null: false
    t.bigint "picture_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["picture_id"], name: "index_room_pictures_on_picture_id"
    t.index ["room_id"], name: "index_room_pictures_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.bigint "place_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["place_id"], name: "index_rooms_on_place_id"
  end

  create_table "telephones", force: :cascade do |t|
    t.string "number"
    t.integer "area_code"
    t.integer "country_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "appointments", "available_times"
  add_foreign_key "appointments", "interagents"
  add_foreign_key "appointments", "professionals"
  add_foreign_key "appointments", "rooms"
  add_foreign_key "interagents", "users"
  add_foreign_key "place_addresses", "addresses"
  add_foreign_key "place_addresses", "users"
  add_foreign_key "place_pictures", "pictures"
  add_foreign_key "place_pictures", "places"
  add_foreign_key "place_professionals", "places"
  add_foreign_key "place_professionals", "professionals"
  add_foreign_key "place_telephones", "places"
  add_foreign_key "place_telephones", "telephones"
  add_foreign_key "places", "users"
  add_foreign_key "professional_addresses", "addresses"
  add_foreign_key "professional_addresses", "professionals"
  add_foreign_key "professional_available_times", "available_times"
  add_foreign_key "professional_available_times", "professionals"
  add_foreign_key "professional_telephones", "professionals"
  add_foreign_key "professional_telephones", "telephones"
  add_foreign_key "professionals", "users"
  add_foreign_key "room_available_times", "available_times"
  add_foreign_key "room_available_times", "rooms"
  add_foreign_key "room_features", "rooms"
  add_foreign_key "room_pictures", "pictures"
  add_foreign_key "room_pictures", "rooms"
  add_foreign_key "rooms", "places"
end
