# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_01_15_175917) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_products_on_code", unique: true
    t.index ["name"], name: "index_products_on_name", unique: true
  end

  create_table "stocks", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "unit_id", null: false
    t.bigint "store_id", null: false
    t.float "quantity", default: 0.0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_stocks_on_product_id"
    t.index ["store_id"], name: "index_stocks_on_store_id"
    t.index ["unit_id"], name: "index_stocks_on_unit_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address"], name: "index_stores_on_address", unique: true
    t.index ["code"], name: "index_stores_on_code", unique: true
    t.index ["name"], name: "index_stores_on_name", unique: true
  end

  create_table "transactions", force: :cascade do |t|
    t.date "transaction_date", null: false
    t.integer "transaction_type", default: 0, null: false
    t.integer "status", default: 0, null: false
    t.bigint "stock_id", null: false
    t.float "quantity", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stock_id"], name: "stock_on_transaction_index"
  end

  create_table "units", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.string "unit_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_units_on_code", unique: true
    t.index ["name"], name: "index_units_on_name", unique: true
  end

  add_foreign_key "stocks", "products"
  add_foreign_key "stocks", "stores"
  add_foreign_key "stocks", "units"
  add_foreign_key "transactions", "stocks"
end
