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

ActiveRecord::Schema.define(version: 20161012231201) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.string "name",                  default: "name"
    t.string "address",               default: "address"
    t.string "city",                  default: "city"
    t.string "state",                 default: "state"
    t.string "zipcode",               default: "74133"
    t.string "first_number",          default: "000-000-000"
    t.string "second_number",         default: "000-000-000"
    t.string "fax",                   default: "fax"
    t.string "google_maps",           default: "google maps api code"
    t.string "email",                 default: "email"
    t.string "logo",                  default: "temp-logo.jpg"
    t.string "google_maps_latitude",  default: "53.164065"
    t.string "float",                 default: "7.346055"
    t.string "google_maps_longitude", default: "7.346055"
    t.string "social_instagram"
    t.string "social_facebook"
  end

  create_table "pages", force: :cascade do |t|
    t.string   "meta_title"
    t.string   "url_link_name"
    t.text     "meta_description"
    t.text     "meta_keywords"
    t.text     "main_description"
    t.string   "slug"
    t.text     "initial_paragraph"
    t.text     "left_area"
    t.text     "right_area"
    t.string   "image"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "subcategories", force: :cascade do |t|
    t.string   "image"
    t.string   "meta_title"
    t.string   "url_link_name"
    t.text     "meta_description"
    t.text     "meta_keywords"
    t.string   "slug"
    t.text     "initial_paragraph"
    t.text     "left_area"
    t.text     "right_area"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "access_level",    default: "user"
  end

end
