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

ActiveRecord::Schema.define(version: 20160518181936) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "telefonnumber"
    t.string   "mail"
    t.integer  "company_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "company_contacts", ["company_id"], name: "index_company_contacts_on_company_id"

  create_table "search_results", force: :cascade do |t|
    t.integer  "search_id"
    t.integer  "searchable_id"
    t.string   "searchable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "search_results", ["search_id"], name: "index_search_results_on_search_id"

  create_table "searches", force: :cascade do |t|
    t.string   "phrase"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "server_users", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.integer  "server_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "server_users", ["server_id"], name: "index_server_users_on_server_id"

  create_table "servers", force: :cascade do |t|
    t.string   "name"
    t.string   "ip_address"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "servers", ["company_id"], name: "index_servers_on_company_id"

end
