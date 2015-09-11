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

ActiveRecord::Schema.define(version: 20150911013900) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "country_id"
    t.string   "address",    null: false
    t.string   "number",     null: false
    t.string   "complement"
    t.string   "city",       null: false
    t.string   "state",      null: false
    t.string   "zipcode",    null: false
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "addresses", ["country_id"], name: "index_addresses_on_country_id"
  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "country",  null: false
    t.string "mnemonic"
  end

  create_table "pets", force: :cascade do |t|
    t.integer  "owner_id"
    t.integer  "adopted_by_id"
    t.integer  "category_id"
    t.integer  "address_id"
    t.string   "name",                          null: false
    t.text     "description",                   null: false
    t.date     "birth_date"
    t.date     "adopted_date"
    t.boolean  "adopted",       default: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "pets", ["address_id"], name: "index_pets_on_address_id"
  add_index "pets", ["adopted_by_id"], name: "index_pets_on_adopted_by_id"
  add_index "pets", ["category_id"], name: "index_pets_on_category_id"
  add_index "pets", ["owner_id"], name: "index_pets_on_owner_id"

  create_table "users", force: :cascade do |t|
    t.string   "name",                                                                 null: false
    t.string   "document",                                                             null: false
    t.string   "email",                  default: "---\n:null: false\n:default: ''\n", null: false
    t.string   "phone",                                                                null: false
    t.text     "description"
    t.string   "sex",                    default: "M"
    t.boolean  "ong",                    default: false
    t.boolean  "status",                 default: true
    t.datetime "created_at",                                                           null: false
    t.datetime "updated_at",                                                           null: false
    t.string   "encrypted_password",     default: "",                                  null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                                   null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["document"], name: "index_users_on_document"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
