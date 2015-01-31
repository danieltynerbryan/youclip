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

ActiveRecord::Schema.define(version: 20150131221648) do

  create_table "clips", force: true do |t|
    t.string   "youtube_id"
    t.float    "start"
    t.float    "end"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
    t.string   "tag_list"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "clip_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "taggings", ["clip_id"], name: "index_taggings_on_clip_id"
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id"

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.string   "youtube_id"
    t.float    "start"
    t.float    "end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
