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

ActiveRecord::Schema.define(version: 2018_04_30_004859) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "ratings", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "rating"
    t.text "review"
    t.uuid "recruiters_id"
    t.uuid "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recruiters_id"], name: "index_ratings_on_recruiters_id"
    t.index ["users_id"], name: "index_ratings_on_users_id"
  end

  create_table "recruiters", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "company_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
