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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110927231159) do

  create_table "classrooms", :force => true do |t|
    t.integer  "instructor_id"
    t.string   "room",          :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "capacity"
    t.date     "finish_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "email"
    t.integer  "instructor_id"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.integer  "workload"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructors", :force => true do |t|
    t.string   "name"
    t.text     "knowledge"
    t.date     "hired_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "hourly"
  end

  create_table "registrations", :force => true do |t|
    t.integer  "student_id"
    t.integer  "classroom_id"
    t.boolean  "paid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.date     "birthdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
