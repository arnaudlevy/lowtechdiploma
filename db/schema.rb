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

ActiveRecord::Schema[7.1].define(version: 2023_12_21_112625) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "certificates", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "first_name"
    t.string "last_name"
    t.date "birth_date"
    t.string "birth_place"
    t.string "ine"
    t.string "year"
    t.string "quality"
    t.integer "ects"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "diplom_kind"
    t.string "diplom_mention"
    t.string "diplom_path"
    t.date "diplom_date"
  end

end
