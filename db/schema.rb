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

ActiveRecord::Schema.define(version: 20130627115429) do

  create_table "clients", force: true do |t|
    t.string   "business_name"
    t.string   "business_email"
    t.string   "name"
    t.string   "client_type"
    t.string   "company_size"
    t.string   "zip_code"
    t.string   "mobile"
    t.string   "state"
    t.integer  "country_id"
    t.string   "fax"
    t.text     "internal_notes"
    t.text     "business_address"
    t.string   "business_phone"
    t.string   "pan"
    t.string   "tan"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "services", ["user_id"], name: "index_services_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "company"
    t.string   "contact_name"
    t.string   "username"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
  end

end
