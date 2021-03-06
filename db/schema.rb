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

ActiveRecord::Schema.define(:version => 20120719151825) do

  create_table "galleries", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.text     "hours"
    t.text     "festival_hours"
    t.text     "description"
    t.text     "exhibition_description"
    t.string   "photo_uid"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "address"
    t.string   "city"
    t.string   "postal_code"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "locations", ["addressable_id", "addressable_type"], :name => "index_locations_on_addressable_id_and_addressable_type"

  create_table "offsites", :force => true do |t|
    t.string   "name"
    t.text     "details"
    t.datetime "starts_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.datetime "ends_at"
  end

  create_table "sponsors", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.string   "logo_uid"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "position"
  end

end
