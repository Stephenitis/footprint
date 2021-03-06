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

ActiveRecord::Schema.define(:version => 20130810192438) do

  create_table "events", :force => true do |t|
    t.integer "meters_driven"
    t.integer "user_id"
    t.integer "score"
    t.integer "meters_walked"
    t.integer "meters_biked"
    t.integer "carbon_footprint"
    t.integer "calories"
  end

  create_table "friendships", :force => true do |t|
    t.integer "user_id"
    t.integer "friend_id"
  end

  create_table "users", :force => true do |t|
    t.string  "name"
    t.string  "email"
    t.integer "zipcode"
    t.integer "score"
    t.string  "moves_access_token"
    t.string  "moves_refresh_token"
    t.string  "password_digest"
  end

end
