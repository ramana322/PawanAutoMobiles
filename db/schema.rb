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

ActiveRecord::Schema.define(version: 20181011173920) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "created_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "mobile_number"
  end

  create_table "deliveries", force: :cascade do |t|
    t.string "engine_no"
    t.string "chassis_no"
    t.string "customer_id"
    t.float "total_cost"
    t.float "subsidy"
    t.float "insurance"
    t.float "registration"
    t.float "warranty"
    t.float "transport"
    t.float "agreements"
    t.index ["customer_id"], name: "index_deliveries_on_customer_id"
  end

  create_table "expenditures", force: :cascade do |t|
    t.date "spent_on"
    t.string "description"
    t.float "amount"
    t.integer "paid_to"
    t.integer "category_id"
    t.integer "created_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incomes", force: :cascade do |t|
    t.date "recieved_on"
    t.string "description"
    t.float "amount"
    t.integer "paid_by"
    t.integer "category_id"
    t.integer "created_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
