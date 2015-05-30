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

ActiveRecord::Schema.define(version: 20150530040248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.integer "driver_id"
    t.integer "user_id"
    t.string  "pickup_location"
    t.string  "dropoff_location"
    t.time    "pickup_time"
    t.time    "dropoff_time"
    t.boolean "completed"
  end

  create_table "cars", force: :cascade do |t|
    t.integer "driver_id"
    t.string  "make"
    t.string  "model"
    t.integer "year"
    t.string  "color"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

end
