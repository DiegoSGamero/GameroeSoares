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

ActiveRecord::Schema[7.0].define(version: 2023_11_09_132948) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adjoining_owners", force: :cascade do |t|
    t.string "full_name"
    t.string "RG"
    t.string "CPF_CNPJ"
    t.string "fantasy_name"
    t.string "address"
    t.string "phone_number"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "adjoining_owners_properties", force: :cascade do |t|
    t.bigint "adjoining_owner_id"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adjoining_owner_id"], name: "index_adjoining_owners_properties_on_adjoining_owner_id"
    t.index ["property_id"], name: "index_adjoining_owners_properties_on_property_id"
  end

  create_table "contractors", force: :cascade do |t|
    t.string "full_name"
    t.string "RG"
    t.string "CPF_CNPJ"
    t.string "fantasy_name"
    t.string "address"
    t.string "phone_number"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moderators", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.float "size"
    t.string "registration_number"
    t.string "limit_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "contractor_id", null: false
    t.string "owners"
    t.index ["contractor_id"], name: "index_properties_on_contractor_id"
  end

  add_foreign_key "adjoining_owners_properties", "adjoining_owners"
  add_foreign_key "adjoining_owners_properties", "properties"
  add_foreign_key "properties", "contractors"
end
