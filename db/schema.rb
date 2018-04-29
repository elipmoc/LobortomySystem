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

ActiveRecord::Schema.define(version: 20180429100120) do

  create_table "chara_mappings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "image_id"
    t.bigint "chara_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chara_id"], name: "fk_rails_0d453a3c73"
    t.index ["image_id"], name: "fk_rails_35baec21f5"
  end

  create_table "charas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "chara_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "image_name"
    t.string "serif_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "serif_ruby_name"
  end

  add_foreign_key "chara_mappings", "charas"
  add_foreign_key "chara_mappings", "images"
end
