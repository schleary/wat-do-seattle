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

ActiveRecord::Schema.define(version: 20150219183057) do

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
    t.text     "image"
  end

  create_table "api_keys", force: true do |t|
    t.string   "access_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.datetime "date_time_start"
    t.datetime "date_time_end"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "activity_id"
    t.text     "description"
    t.text     "image"
  end

  create_table "friendships", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "friend_id"
  end

  create_table "invites", force: true do |t|
    t.string   "status",     default: "Not Yet Responded"
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "guest_id"
  end

  create_table "notifications", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.integer  "event_id"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",            default: false
    t.string   "uid"
    t.string   "oauth_token"
    t.text     "image"
    t.datetime "oauth_expires_at"
    t.string   "provider"
    t.boolean  "confirmed",        default: false
    t.boolean  "notify",           default: false
  end

end
