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

ActiveRecord::Schema.define(version: 20160927180622) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anaesthetics", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "date_and_time"
    t.string   "intervention"
    t.string   "indication"
    t.integer  "no_attempts"
    t.string   "complications"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "follow_ups", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "patient_id"
    t.boolean  "nausea"
    t.boolean  "itching"
    t.boolean  "headache"
    t.boolean  "leg_weakness"
    t.boolean  "leg_numbness"
    t.boolean  "back_pain"
    t.boolean  "urinary_rentention"
    t.boolean  "pain"
    t.boolean  "awareness_GA"
    t.string   "comments"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "DOB"
    t.string   "MRN"
    t.string   "NHS_No"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "grade"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
