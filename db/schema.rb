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

ActiveRecord::Schema.define(version: 20151102235716) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lists", force: :cascade do |t|
    t.string   "topic"
    t.integer  "likes"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "first"
    t.string   "second"
    t.string   "third"
    t.string   "fourth"
    t.string   "fifth"
    t.string   "location1"
    t.float    "price1"
    t.text     "description1"
    t.string   "location2"
    t.float    "price2"
    t.text     "description2"
    t.string   "location3"
    t.float    "price3"
    t.text     "description3"
    t.string   "location4"
    t.float    "price4"
    t.text     "description4"
    t.string   "location5"
    t.float    "price5"
    t.text     "description5"
  end

  add_index "lists", ["user_id"], name: "index_lists_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "user_name"
    t.string   "password_digest"
    t.integer  "post_num",        default: 0
    t.integer  "likes",           default: 0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_foreign_key "lists", "users"
end
