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

ActiveRecord::Schema.define(version: 20140109010024) do

  create_table "blockedshows", force: true do |t|
    t.integer  "user_id"
    t.integer  "tvshow_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blockedshows", ["tvshow_id"], name: "index_blockedshows_on_tvshow_id"
  add_index "blockedshows", ["user_id"], name: "index_blockedshows_on_user_id"

  create_table "phrases", force: true do |t|
    t.string   "text"
    t.integer  "tvshow_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phrases", ["tvshow_id"], name: "index_phrases_on_tvshow_id"

  create_table "tvshows", force: true do |t|
    t.string   "title"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "oauth_token"
    t.string   "oauth_secret"
    t.string   "image"
  end

end
