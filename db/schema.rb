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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160110060615) do

  create_table "messages", force: true do |t|
    t.text     "content"
    t.string   "recip_name"
    t.string   "recip_number"
    t.integer  "sent_count",     default: 0
    t.boolean  "sent",           default: false
    t.datetime "sent_at"
    t.string   "sent_by_name"
    t.string   "sent_by_number"
    t.integer  "priority",       default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
