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

ActiveRecord::Schema.define(version: 20150205001948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.integer  "min_activity_level"
    t.integer  "max_activity_level"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "min_price"
    t.integer  "max_price"
    t.string   "image_url"
  end

  create_table "events", force: true do |t|
    t.datetime "date_time_start"
    t.datetime "date_time_end"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url"
    t.string   "activity_id"
    t.string   "user_id"
  end

  create_table "friends", force: true do |t|
    t.string   "user_id"
    t.string   "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendships", force: true do |t|
    t.string   "user_id"
    t.string   "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.string   "uid"
    t.string   "image_url"
  end

end
