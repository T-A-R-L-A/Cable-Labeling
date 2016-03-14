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

ActiveRecord::Schema.define(version: 20160314143939) do

  create_table "cabinets", force: :cascade do |t|
    t.string   "description"
    t.string   "abbr"
    t.string   "room"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cables", force: :cascade do |t|
    t.string   "type"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: :cascade do |t|
    t.text     "description"
    t.string   "abbr"
    t.integer  "section_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
  end

  add_index "devices", ["section_id"], name: "index_devices_on_section_id"

  create_table "labels", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "s_system_id"
    t.integer  "d_system_id"
    t.integer  "s_section_id"
    t.integer  "d_section_id"
    t.integer  "s_device_id"
    t.integer  "d_device_id"
    t.integer  "cable_id"
    t.integer  "cabinet_id"
  end

  add_index "labels", ["d_device_id"], name: "index_labels_on_d_device_id"
  add_index "labels", ["d_section_id"], name: "index_labels_on_d_section_id"
  add_index "labels", ["d_system_id"], name: "index_labels_on_d_system_id"
  add_index "labels", ["s_device_id"], name: "index_labels_on_s_device_id"
  add_index "labels", ["s_section_id"], name: "index_labels_on_s_section_id"
  add_index "labels", ["s_system_id"], name: "index_labels_on_s_system_id"

  create_table "sections", force: :cascade do |t|
    t.string   "description"
    t.string   "abbr"
    t.integer  "code"
    t.integer  "system_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "sections", ["system_id"], name: "index_sections_on_system_id"

  create_table "systems", force: :cascade do |t|
    t.string   "description"
    t.string   "abbr"
    t.integer  "code"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
