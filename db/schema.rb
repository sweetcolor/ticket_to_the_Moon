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

ActiveRecord::Schema.define(version: 20150809143315) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "cities", force: :cascade do |t|
    t.hstore "name", null: false
  end

  create_table "coach_types", force: :cascade do |t|
    t.string "name", limit: 20, null: false
  end

  create_table "coaches", force: :cascade do |t|
    t.integer "number",          limit: 2
    t.integer "quantity_places", limit: 2
    t.integer "train_id",                  null: false
    t.integer "coach_type_id",             null: false
  end

  create_table "stations", force: :cascade do |t|
    t.hstore  "name",    null: false
    t.integer "city_id", null: false
  end

  create_table "ticket_types", force: :cascade do |t|
    t.string "name", limit: 20, null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "name",                 limit: 30, null: false
    t.string   "surname",              limit: 30, null: false
    t.string   "middle_name",          limit: 30, null: false
    t.date     "date",                            null: false
    t.datetime "created_at",                      null: false
    t.integer  "place_number",         limit: 2,  null: false
    t.integer  "coach_id",                        null: false
    t.integer  "coach_type_id",                   null: false
    t.integer  "ticket_type_id",                  null: false
    t.integer  "station_departure_id",            null: false
    t.integer  "station_arrival_id",              null: false
  end

  create_table "train_stations", force: :cascade do |t|
    t.time    "departure",                          null: false
    t.time    "arrival",                            null: false
    t.decimal "price",      precision: 6, scale: 2, null: false
    t.integer "distance",                           null: false
    t.integer "train_id",                           null: false
    t.integer "station_id",                         null: false
  end

  create_table "trains", force: :cascade do |t|
    t.string  "name",        limit: 30,              null: false
    t.integer "station_ids",            default: [], null: false, array: true
  end

  create_table "types", force: :cascade do |t|
    t.string "name", limit: 20, null: false
  end

  add_foreign_key "coaches", "coach_types"
  add_foreign_key "coaches", "trains"
  add_foreign_key "stations", "cities"
  add_foreign_key "tickets", "coach_types"
  add_foreign_key "tickets", "coaches"
  add_foreign_key "tickets", "ticket_types"
  add_foreign_key "tickets", "train_stations", column: "station_arrival_id"
  add_foreign_key "tickets", "train_stations", column: "station_departure_id"
  add_foreign_key "train_stations", "stations"
  add_foreign_key "train_stations", "trains"
end
