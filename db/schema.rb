# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160227024639) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "supermarket_zipcodes", force: :cascade do |t|
    t.integer  "supermarket_id"
    t.integer  "zipcode_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "supermarket_zipcodes", ["supermarket_id"], name: "index_supermarket_zipcodes_on_supermarket_id", using: :btree
  add_index "supermarket_zipcodes", ["zipcode_id"], name: "index_supermarket_zipcodes_on_zipcode_id", using: :btree

  create_table "supermarkets", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "zipcodes", force: :cascade do |t|
    t.string   "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "supermarket_zipcodes", "supermarkets"
  add_foreign_key "supermarket_zipcodes", "zipcodes"
end
