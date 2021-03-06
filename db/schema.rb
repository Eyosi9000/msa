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

ActiveRecord::Schema[7.0].define(version: 2022_06_10_035926) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acadamic_announcements", force: :cascade do |t|
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.string "status", null: false
    t.bigint "acadamic_program_id", null: false
    t.bigint "acadamic_year_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["acadamic_program_id"], name: "index_acadamic_announcements_on_acadamic_program_id"
    t.index ["acadamic_year_id"], name: "index_acadamic_announcements_on_acadamic_year_id"
  end

  create_table "acadamic_programs", force: :cascade do |t|
    t.bigint "program_id", null: false
    t.bigint "program_level_id", null: false
    t.bigint "program_type_id", null: false
    t.integer "duration", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_acadamic_programs_on_program_id"
    t.index ["program_level_id"], name: "index_acadamic_programs_on_program_level_id"
    t.index ["program_type_id"], name: "index_acadamic_programs_on_program_type_id"
  end

  create_table "acadamic_years", force: :cascade do |t|
    t.string "year", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "applicants", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "middle_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "applications", force: :cascade do |t|
    t.string "status"
    t.boolean "payment_made"
    t.bigint "applicant_id", null: false
    t.bigint "acadamic_announcement_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["acadamic_announcement_id"], name: "index_applications_on_acadamic_announcement_id"
    t.index ["applicant_id"], name: "index_applications_on_applicant_id"
  end

  create_table "program_levels", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "program_types", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "acadamic_announcements", "acadamic_programs"
  add_foreign_key "acadamic_announcements", "acadamic_years"
  add_foreign_key "acadamic_programs", "program_levels"
  add_foreign_key "acadamic_programs", "program_types"
  add_foreign_key "acadamic_programs", "programs"
  add_foreign_key "applications", "acadamic_announcements"
  add_foreign_key "applications", "applicants"
end
