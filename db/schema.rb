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

ActiveRecord::Schema.define(version: 20160412213749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "health_issues", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "photo_id"
    t.integer  "juice_id"
  end

  create_table "juices", force: :cascade do |t|
    t.string  "name"
    t.string  "description"
    t.integer "price"
    t.string  "photo_id"
    t.integer "health_issue_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "juice_id"
    t.boolean  "shipped",       default: false
    t.integer  "quantity",      default: 0
    t.decimal  "shipping_cost", default: 0.0
    t.decimal  "price"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "purchased_at"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "status",       default: "status"
  end

  create_table "refile_attachments", force: :cascade do |t|
    t.string "namespace", null: false
  end

  add_index "refile_attachments", ["namespace"], name: "index_refile_attachments_on_namespace", using: :btree

  create_table "remedies", force: :cascade do |t|
    t.integer  "juice_id"
    t.integer  "health_issue_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
