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

ActiveRecord::Schema.define(version: 20160408172719) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string   "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "rating"
    t.text     "comment"
    t.integer  "driver_id"
    t.integer  "user_id"
    t.integer  "rater_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "requester_id"
    t.integer  "p_time"
    t.boolean  "status"
    t.integer  "r_time"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "p_area"
    t.string   "d_area"
    t.string   "p_sub_area"
    t.string   "d_sub_area"
    t.integer  "qn"
  end

  create_table "s_reqs", force: :cascade do |t|
    t.integer  "avl_id"
    t.integer  "user_id"
    t.integer  "cab_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subareas", force: :cascade do |t|
    t.string   "subarea"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "area_id"
  end

  add_index "subareas", ["area_id"], name: "index_subareas_on_area_id", using: :btree

  create_table "supplies", force: :cascade do |t|
    t.integer  "p_time"
    t.string   "car"
    t.integer  "rate_per_traveller"
    t.integer  "s_available"
    t.integer  "s_left"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "p_area"
    t.string   "p_sub_area"
    t.string   "d_area"
    t.string   "d_sub_area"
    t.integer  "user_id"
  end

  add_index "supplies", ["user_id"], name: "index_supplies_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.text     "add"
    t.integer  "age"
    t.integer  "ph",                     limit: 8
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "subareas", "areas"
  add_foreign_key "supplies", "users"
end
