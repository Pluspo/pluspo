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

ActiveRecord::Schema[7.0].define(version: 2022_09_06_023145) do
  create_table "area_sports", force: :cascade do |t|
    t.integer "area_id", null: false
    t.integer "sport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_area_sports_on_area_id"
    t.index ["sport_id"], name: "index_area_sports_on_sport_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "opened_at", null: false
    t.datetime "closed_at", null: false
    t.string "address", null: false
    t.integer "place_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_areas_on_place_id"
  end

  create_table "batches", force: :cascade do |t|
    t.datetime "date_time", null: false
    t.integer "area_sport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_sport_id"], name: "index_batches_on_area_sport_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "opened_at", null: false
    t.datetime "closed_at", null: false
    t.string "address", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_places_on_name", unique: true
  end

  create_table "sport_shedules", force: :cascade do |t|
    t.string "cycles"
    t.datetime "started_at", null: false
    t.datetime "finished_at", null: false
    t.integer "area_sport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_sport_id"], name: "index_sport_shedules_on_area_sport_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_sports_on_name", unique: true
  end

  add_foreign_key "area_sports", "areas"
  add_foreign_key "area_sports", "sports"
  add_foreign_key "areas", "places"
  add_foreign_key "batches", "area_sports"
  add_foreign_key "sport_shedules", "area_sports"
end
