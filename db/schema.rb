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

ActiveRecord::Schema.define(version: 20170119054946) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chef_menus", force: :cascade do |t|
    t.string   "food_name"
    t.string   "food_description"
    t.integer  "votes"
    t.string   "food_url"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
    t.date     "date"
  end

  add_index "chef_menus", ["user_id"], name: "index_chef_menus_on_user_id", using: :btree

  create_table "chefs", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "profileurl"
  end

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "menus", force: :cascade do |t|
    t.string   "foodname"
    t.string   "fooddescription"
    t.string   "foodurl"
    t.integer  "votes"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.date     "date"
    t.integer  "user_id"
    t.integer  "price"
  end

  add_index "menus", ["user_id"], name: "index_menus_on_user_id", using: :btree

  create_table "order_tables", force: :cascade do |t|
    t.string   "delivery_time"
    t.string   "destination_address"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "chef_menu_id"
    t.integer  "user_id"
    t.integer  "quantity"
  end

  add_index "order_tables", ["chef_menu_id"], name: "index_order_tables_on_chef_menu_id", using: :btree
  add_index "order_tables", ["user_id"], name: "index_order_tables_on_user_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.string   "destaddress"
    t.integer  "quantity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "menu_id"
  end

  add_index "orders", ["menu_id"], name: "index_orders_on_menu_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "user_name"
    t.string   "profile_url"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "chef_menus", "users"
  add_foreign_key "examples", "users"
  add_foreign_key "menus", "users"
  add_foreign_key "order_tables", "chef_menus"
  add_foreign_key "order_tables", "users"
  add_foreign_key "orders", "menus"
  add_foreign_key "orders", "users"
end
