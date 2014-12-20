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

ActiveRecord::Schema.define(version: 20141220025654) do

  create_table "colors", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eras", force: true do |t|
    t.text     "description"
    t.text     "circa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forms", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "givers", force: true do |t|
    t.text     "lastname"
    t.text     "firstname"
    t.integer  "status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "givers", ["status_id"], name: "index_givers_on_status_id"

  create_table "locations", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ornament_has_colors", force: true do |t|
    t.integer  "color_id"
    t.integer  "ornament_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ornament_has_colors", ["color_id"], name: "index_ornament_has_colors_on_color_id"
  add_index "ornament_has_colors", ["ornament_id"], name: "index_ornament_has_colors_on_ornament_id"

  create_table "ornaments", force: true do |t|
    t.integer  "giver_id"
    t.integer  "story_id"
    t.integer  "form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ornaments", ["form_id"], name: "index_ornaments_on_form_id"
  add_index "ornaments", ["giver_id"], name: "index_ornaments_on_giver_id"
  add_index "ornaments", ["story_id"], name: "index_ornaments_on_story_id"

  create_table "statuses", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stories", force: true do |t|
    t.text     "text"
    t.integer  "location_id"
    t.integer  "era_id"
    t.text     "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stories", ["era_id"], name: "index_stories_on_era_id"
  add_index "stories", ["location_id"], name: "index_stories_on_location_id"

end
