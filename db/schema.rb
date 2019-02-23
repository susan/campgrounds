# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_02_22_163717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campgrounds", force: :cascade do |t|
    t.integer "park_id"
    t.text "directions_overview"
    t.string "name"
    t.text "description"
    t.boolean "cell_phone_reception"
    t.boolean "showers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parks", force: :cascade do |t|
    t.string "states"
    t.string "lat_long"
    t.text "description"
    t.string "designation"
    t.string "park_code"
    t.text "directions_info"
    t.string "directions_url"
    t.string "full_name"
    t.string "url"
    t.text "weather_info"
    t.string "name"
    t.integer "vehicle_fee"
    t.string "img1_url"
    t.boolean "is_editable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.integer "park_id"
    t.string "credit1"
    t.string "alt_text1"
    t.string "title1"
    t.integer "id1"
    t.string "caption1"
    t.string "url1"
    t.string "credit2"
    t.string "alt_text2"
    t.string "title2"
    t.integer "id2"
    t.string "caption2"
    t.string "url2"
    t.string "credit3"
    t.string "alt_text3"
    t.string "title3"
    t.integer "id3"
    t.string "caption3"
    t.string "url3"
    t.string "credit4"
    t.string "alt_text4"
    t.string "title4"
    t.integer "id4"
    t.string "caption4"
    t.string "url4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "campground_id"
    t.string "content"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.text "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
