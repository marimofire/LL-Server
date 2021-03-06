# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130506185837) do

  create_table "genres", :force => true do |t|
    t.string   "genre_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "genres_local_points", :force => true do |t|
    t.integer  "local_point_id"
    t.integer  "genre_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "levels", :force => true do |t|
    t.string   "level_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "local_points", :force => true do |t|
    t.string   "point_name"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "site_url"
    t.integer  "level_id"
    t.datetime "deleted_at"
    t.string   "instruments"
    t.string   "fee"
  end

  add_index "local_points", ["latitude", "longitude", "updated_at"], :name => "index_local_points_on_latitude_and_longitude_and_updated_at"

end
