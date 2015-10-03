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

ActiveRecord::Schema.define(version: 20151003192529) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actionable_actions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.integer  "actionable_id"
    t.integer  "user_id"
    t.integer  "actionable_type"
  end

  create_table "actions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.integer  "action_id"
    t.integer  "actionable_id"
    t.string   "actionable_type"
    t.integer  "user_id"
  end

  create_table "pictureable_pictures", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "picture_id"
    t.integer  "picturable_id"
    t.string   "picturable_type"
  end

  create_table "pictures", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "filename"
    t.integer  "size",         limit: 8
    t.string   "content_type"
    t.string   "storage_key"
    t.json     "metadata"
  end

  create_table "professionals", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company_name"
    t.string   "category"
    t.text     "description"
    t.string   "location"
    t.integer  "picture_id"
  end

  create_table "services", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "category"
    t.float    "cost"
    t.text     "description"
    t.string   "state"
    t.integer  "professional_id"
    t.integer  "picture_id"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "points"
    t.text     "description"
    t.string   "location"
    t.integer  "picture_id"
  end

end
