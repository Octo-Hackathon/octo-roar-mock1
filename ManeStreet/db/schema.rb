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

ActiveRecord::Schema.define(version: 20150311224237) do

  create_table "opportunities", force: :cascade do |t|
    t.string   "title",           limit: 255
    t.string   "type",            limit: 255
    t.text     "description",     limit: 65535
    t.string   "setaside",        limit: 255
    t.datetime "publishdate"
    t.date     "responseduedate"
    t.string   "status",          limit: 255
    t.string   "buyername",       limit: 255
    t.string   "placeofperform",  limit: 255
    t.string   "primaypoc",       limit: 255
    t.integer  "user_id",         limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "opportunities", ["user_id"], name: "index_opportunities_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",    limit: 255
    t.string   "first_name",  limit: 255
    t.string   "last_name",   limit: 255
    t.string   "phone",       limit: 255
    t.string   "email",       limit: 255
    t.text     "address",     limit: 65535
    t.string   "password",    limit: 255
    t.string   "photo",       limit: 255
    t.integer  "usertype_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "users", ["usertype_id"], name: "index_users_on_usertype_id", using: :btree

  create_table "usertypes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end