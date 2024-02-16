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

ActiveRecord::Schema[7.1].define(version: 2024_02_12_180626) do
  create_table "clients", force: :cascade do |t|
    t.string "clientName"
    t.integer "ordersPlaced"
    t.boolean "newCustomer"
    t.datetime "dateJoined"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "company_name"
    t.integer "orderNumber"
    t.boolean "InState"
    t.decimal "Profit_Margin"
    t.decimal "Gallon_Rqst"
    t.datetime "OrderDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
