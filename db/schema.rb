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

ActiveRecord::Schema.define(version: 20140414032525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: true do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "event_id",   null: false
    t.integer  "user_id",    null: false
  end

  add_index "attendances", ["event_id", "user_id"], name: "index_attendances_on_event_id_and_user_id", unique: true, using: :btree

  create_table "events", force: true do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "ended_at"
    t.string   "name",       null: false
    t.datetime "started_at", null: false
    t.integer  "user_id",    null: false
    t.string   "address"
    t.string   "string"
    t.float    "lat",        null: false
    t.float    "lon",        null: false
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "device_token"
  end

  add_index "users", ["device_token"], name: "index_users_on_device_token", unique: true, using: :btree

end
