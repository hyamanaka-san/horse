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

ActiveRecord::Schema.define(version: 2019_09_21_091106) do

  create_table "horses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "horse_id"
    t.string "horse_name"
    t.string "sex"
    t.date "birthday"
    t.integer "all"
    t.integer "win"
    t.integer "second"
    t.integer "third"
    t.integer "other"
    t.bigint "money"
    t.string "gwin"
    t.integer "ghistory"
    t.string "production"
    t.string "ml"
    t.string "ml2"
    t.string "ml3a"
    t.string "fml3a"
    t.string "fml2"
    t.string "ml3b"
    t.string "fml3b"
    t.string "fml_f"
    t.string "ml2_f"
    t.string "fml2_f"
    t.string "ml3a_f"
    t.string "fml3a_f"
    t.string "ml3b_f"
    t.string "fml3b_f"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
