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

ActiveRecord::Schema.define(version: 20141029180917) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rewards", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rewards_todos", id: false, force: true do |t|
    t.integer "todo_id",   null: false
    t.integer "reward_id", null: false
  end

  create_table "schedules", force: true do |t|
    t.time     "from"
    t.time     "to"
    t.string   "day_of_week"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "todo_id"
  end

  add_index "schedules", ["todo_id"], name: "index_schedules_on_todo_id", using: :btree

  create_table "todos", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
