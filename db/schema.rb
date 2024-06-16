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

ActiveRecord::Schema[7.1].define(version: 2024_06_16_073959) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string "sku"
    t.text "description"
    t.string "name"
    t.integer "factory_price", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promo_activations", force: :cascade do |t|
    t.bigint "promo_id", null: false
    t.integer "min_quantity", default: 0
    t.integer "min_value", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["promo_id"], name: "index_promo_activations_on_promo_id"
  end

  create_table "promo_rewards", force: :cascade do |t|
    t.bigint "promo_id", null: false
    t.integer "value"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "reward_id"
    t.index ["promo_id"], name: "index_promo_rewards_on_promo_id"
    t.index ["reward_id"], name: "index_promo_rewards_on_reward_id"
  end

  create_table "promos", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.string "description"
    t.integer "promo_type", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_promos_on_product_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "phone_number", default: "", null: false
    t.string "password"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phone_number"], name: "index_users_on_phone_number", unique: true
  end

  add_foreign_key "promo_activations", "promos"
  add_foreign_key "promo_rewards", "products", column: "reward_id"
  add_foreign_key "promo_rewards", "promos"
  add_foreign_key "promos", "products"
end
