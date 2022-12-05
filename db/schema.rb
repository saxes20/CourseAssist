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

ActiveRecord::Schema[7.0].define(version: 2022_12_05_183323) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addcourses", force: :cascade do |t|
    t.string "uni"
    t.string "course"
    t.string "semester"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "course"
    t.string "prof"
    t.text "preReqs"
    t.text "description"
    t.text "reviews"
    t.integer "currentlyOffered"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "majorreqs", force: :cascade do |t|
    t.string "subject"
    t.string "course"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "minorreqs", force: :cascade do |t|
    t.string "subject"
    t.string "course"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schoolreqs", force: :cascade do |t|
    t.string "school"
    t.string "course"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studentschedules", force: :cascade do |t|
    t.string "uni"
    t.string "course"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first"
    t.string "last"
    t.integer "year"
    t.string "school"
    t.string "major"
    t.string "minor"
    t.string "uni"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
