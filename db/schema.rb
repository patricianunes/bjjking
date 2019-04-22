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

ActiveRecord::Schema.define(version: 2019_04_19_124241) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "athletes", force: :cascade do |t|
    t.text "name"
    t.text "photo"
    t.float "weight"
    t.date "birthday"
    t.integer "team_id"
    t.integer "belt_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "belts", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.text "name"
    t.text "logo"
    t.text "address"
    t.integer "athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
