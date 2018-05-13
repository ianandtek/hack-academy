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

ActiveRecord::Schema.define(version: 20160926142908) do

  create_table "cohorts", force: :cascade do |t|
    t.integer  "course_id"
    t.date     "start_date"
    t.date     "finish_date"
    t.text     "location"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["course_id"], name: "index_cohorts_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "duration"
    t.text     "description"
    t.text     "student_profile"
    t.text     "graduate_profile"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "mentors", force: :cascade do |t|
    t.integer  "profile_id"
    t.date     "entry_date"
    t.integer  "contract_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["profile_id"], name: "index_mentors_on_profile_id"
  end

  create_table "mentors_has_cohorts", force: :cascade do |t|
    t.integer "mentor_id"
    t.integer "mentors_id_profile_id"
    t.integer "cohort_id"
    t.integer "cohorts_id_course_id"
    t.index ["cohort_id"], name: "index_mentors_has_cohorts_on_cohort_id"
    t.index ["cohorts_id_course_id"], name: "index_mentors_has_cohorts_on_cohorts_id_course_id"
    t.index ["mentor_id"], name: "index_mentors_has_cohorts_on_mentor_id"
    t.index ["mentors_id_profile_id"], name: "index_mentors_has_cohorts_on_mentors_id_profile_id"
  end

  create_table "people", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.integer  "profile_id"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["profile_id"], name: "index_phones_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "person_id"
    t.string   "dni"
    t.string   "name"
    t.string   "lastname"
    t.date     "birthday"
    t.integer  "gender"
    t.boolean  "car"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_profiles_on_person_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer  "profile_id"
    t.boolean  "laptop"
    t.boolean  "job_market"
    t.integer  "reference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_students_on_profile_id"
  end

  create_table "students_has_cohorts", force: :cascade do |t|
    t.integer "student_id"
    t.integer "students_id_profile_id"
    t.integer "cohort_id"
    t.integer "cohorts_id_course_id"
    t.index ["cohort_id"], name: "index_students_has_cohorts_on_cohort_id"
    t.index ["cohorts_id_course_id"], name: "index_students_has_cohorts_on_cohorts_id_course_id"
    t.index ["student_id"], name: "index_students_has_cohorts_on_student_id"
    t.index ["students_id_profile_id"], name: "index_students_has_cohorts_on_students_id_profile_id"
  end

end
