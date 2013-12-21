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

ActiveRecord::Schema.define(version: 20131221142415) do

  create_table "absences", force: true do |t|
    t.date     "start_day"
    t.date     "end_day"
    t.integer  "user_id"
    t.string   "reason"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "activities", force: true do |t|
    t.date     "appointment_date"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "allocated_at"
    t.integer  "work_id"
    t.time     "activity_time"
    t.integer  "customer_id"
    t.integer  "hire_car_id"
    t.boolean  "direct_contact"
    t.boolean  "customer_service_agreement"
    t.boolean  "data_privacy_statement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hirecars", force: true do |t|
    t.string   "badge"
    t.datetime "regestration_date"
    t.string   "fuel"
    t.string   "brand"
    t.string   "model"
    t.text     "comment"
    t.text     "defect"
    t.boolean  "smoking"
    t.integer  "stati_id"
    t.datetime "tech_check"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statis", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
