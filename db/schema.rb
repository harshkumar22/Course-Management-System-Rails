# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_05_04_123059) do

  create_table "certificates", force: :cascade do |t|
    t.integer "course_enrollment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_enrollment_id"], name: "index_certificates_on_course_enrollment_id"
  end

  create_table "course_enrollments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "course_id", null: false
    t.datetime "valid_till", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_course_enrollments_on_course_id"
    t.index ["user_id"], name: "index_course_enrollments_on_user_id"
  end

  create_table "course_publishes", primary_key: ["user_id", "course_id"], force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_course_publishes_on_course_id"
    t.index ["user_id"], name: "index_course_publishes_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.decimal "price", precision: 10, scale: 2, null: false
    t.decimal "duration", precision: 10, scale: 2, null: false
    t.integer "rating", null: false
    t.string "category", null: false
    t.datetime "validity", null: false
    t.boolean "drafting_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "feedbacks", primary_key: ["user_id", "course_id"], force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "course_id", null: false
    t.integer "rating", null: false
    t.text "review", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_feedbacks_on_course_id"
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "item_boughts", primary_key: ["transaction_id", "course_id"], force: :cascade do |t|
    t.integer "transaction_id", null: false
    t.integer "course_id", null: false
    t.decimal "amount", precision: 10, scale: 2, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_item_boughts_on_course_id"
    t.index ["transaction_id"], name: "index_item_boughts_on_transaction_id"
  end

  create_table "progresses", primary_key: "course_enrollment_id", force: :cascade do |t|
    t.decimal "total_duration", precision: 10, scale: 2, null: false
    t.decimal "watch_duration", precision: 10, scale: 2, null: false
    t.decimal "completion_percentage", precision: 10, scale: 2, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_enrollment_id"], name: "index_progresses_on_course_enrollment_id"
  end

  create_table "syllabuses", primary_key: ["course_id", "module_no", "video_link"], force: :cascade do |t|
    t.integer "course_id", null: false
    t.bigint "module_no", null: false
    t.string "video_link", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_syllabuses_on_course_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.decimal "total_amount", precision: 10, scale: 2, null: false
    t.integer "item_boughts", null: false
    t.boolean "payment_status", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.string "contact", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "certificates", "course_enrollments"
  add_foreign_key "course_enrollments", "courses"
  add_foreign_key "course_enrollments", "users"
  add_foreign_key "course_publishes", "courses"
  add_foreign_key "course_publishes", "users"
  add_foreign_key "feedbacks", "courses"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "item_boughts", "courses"
  add_foreign_key "item_boughts", "transactions"
  add_foreign_key "progresses", "course_enrollments"
  add_foreign_key "syllabuses", "courses"
  add_foreign_key "transactions", "users"
end
