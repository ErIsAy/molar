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

ActiveRecord::Schema.define(version: 2018_07_09_191049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dental_charts", force: :cascade do |t|
    t.string "tooth"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_dental_charts_on_patient_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "f_name"
    t.string "l_name"
    t.string "specialty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.datetime "start"
    t.datetime "end"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "patient_id"
    t.index ["patient_id"], name: "index_events_on_patient_id"
  end

  create_table "issues", force: :cascade do |t|
    t.string "description"
    t.bigint "dental_chart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dental_chart_id"], name: "index_issues_on_dental_chart_id"
  end

  create_table "med_histories", force: :cascade do |t|
    t.string "q1"
    t.string "q2"
    t.string "q3"
    t.string "q4"
    t.string "q5"
    t.string "q6"
    t.string "q7"
    t.string "q8"
    t.string "q9"
    t.string "q10"
    t.string "q11"
    t.string "q12"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_med_histories_on_patient_id"
  end

  create_table "notes", force: :cascade do |t|
    t.text "body"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_notes_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "f_name"
    t.string "l_name"
    t.string "gender"
    t.string "address"
    t.string "apt_suite"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.bigint "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "birth_date"
  end

  create_table "recurring_events", force: :cascade do |t|
    t.string "title"
    t.date "anchor"
    t.integer "frequency", limit: 2, default: 0
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "dental_charts", "patients"
  add_foreign_key "events", "patients"
  add_foreign_key "issues", "dental_charts"
  add_foreign_key "med_histories", "patients"
  add_foreign_key "notes", "patients"
end
