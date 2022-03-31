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

ActiveRecord::Schema.define(version: 2022_03_28_144330) do

  create_table "bids", force: :cascade do |t|
    t.integer "bid_amount"
    t.integer "user_id"
    t.integer "item_id"
    t.datetime "created_at"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "category"
    t.string "condition"
    t.integer "starting_price"
    t.boolean "open"
    t.datetime "auction_end"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.integer "money"
  end

end
