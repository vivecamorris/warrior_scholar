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

ActiveRecord::Schema.define(version: 20140801140912) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: true do |t|
    t.string   "access_code"
    t.string   "fname"
    t.string   "lname"
    t.integer  "zipcode"
    t.text     "map_comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "used",           default: false
    t.string   "remember_token"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "ip_address"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

  create_table "videos", force: true do |t|
    t.string   "videolink"
    t.string   "pbarimg"
    t.string   "vidnum"
    t.string   "ttl"
    t.string   "subttl"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "videodescription"
  end

end
