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

ActiveRecord::Schema.define(version: 20161208114834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sub_scopes", force: :cascade do |t|
    t.string   "name"
    t.string   "key_question"
    t.string   "core_idea"
    t.string   "recommended_grade"
    t.integer  "topic_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["topic_id"], name: "index_sub_scopes_on_topic_id", using: :btree
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_topics_on_subject_id", using: :btree
  end

  add_foreign_key "sub_scopes", "topics"
  add_foreign_key "topics", "subjects"
end
