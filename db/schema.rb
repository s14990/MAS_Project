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

ActiveRecord::Schema.define(version: 2019_05_30_075625) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batches", force: :cascade do |t|
    t.date "due_date"
    t.integer "number"
    t.bigint "order_id", null: false
    t.bigint "wholesale_purchase_id", null: false
    t.bigint "medication_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medication_id"], name: "index_batches_on_medication_id"
    t.index ["order_id"], name: "index_batches_on_order_id", unique: true
    t.index ["wholesale_purchase_id"], name: "index_batches_on_wholesale_purchase_id", unique: true
  end

  create_table "branches", force: :cascade do |t|
    t.string "address", null: false
    t.string "kind", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "certificates", force: :cascade do |t|
    t.string "short_name", null: false
    t.string "full_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "purpose", null: false
    t.string "side_effects", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "has_licence", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medications", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price", null: false
    t.integer "total"
    t.bigint "group_id"
    t.bigint "manufacturer_id"
    t.boolean "eligible_for_sale", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_medications_on_group_id"
    t.index ["manufacturer_id"], name: "index_medications_on_manufacturer_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date "order_date"
    t.date "receive_date"
    t.string "state", null: false
    t.integer "value"
    t.bigint "branch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_orders_on_branch_id"
  end

  create_table "practices", force: :cascade do |t|
    t.bigint "branch_id"
    t.bigint "worker_id"
    t.date "start_date"
    t.date "finish_date"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_practices_on_branch_id"
    t.index ["worker_id"], name: "index_practices_on_worker_id"
  end

  create_table "wholesale_purchases", force: :cascade do |t|
    t.date "purchase_date"
    t.integer "sum", null: false
    t.bigint "wholesaler_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wholesaler_id"], name: "index_wholesale_purchases_on_wholesaler_id"
  end

  create_table "wholesalers", force: :cascade do |t|
    t.string "name", null: false
    t.integer "discount", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string "name", null: false
    t.integer "salary", null: false
    t.string "email"
    t.integer "premija"
    t.integer "bonus"
    t.integer "pay"
    t.date "hiredate"
    t.integer "certificate_ids", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type", default: "Asystent", null: false
  end

  add_foreign_key "batches", "orders"
  add_foreign_key "batches", "wholesale_purchases"
end
