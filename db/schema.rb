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

ActiveRecord::Schema.define(version: 20160120061353) do

  create_table "addons", force: true do |t|
    t.string   "addon_name",    limit: 50, null: false
    t.string   "meta_key",      limit: 50, null: false
    t.text     "meta_value",               null: false
    t.string   "resource_type", limit: 10
    t.integer  "resource_id"
    t.datetime "date_time"
  end

  add_index "addons", ["addon_name"], name: "plugin", using: :btree
  add_index "addons", ["meta_key"], name: "meta_key", using: :btree
  add_index "addons", ["resource_id"], name: "resource_id", using: :btree
  add_index "addons", ["resource_type"], name: "resource_type", using: :btree

  create_table "albums", force: true do |t|
    t.string   "name",        null: false
    t.integer  "user_id",     null: false
    t.string   "cover_image", null: false
    t.text     "description", null: false
    t.datetime "created_on",  null: false
  end

  add_index "albums", ["user_id"], name: "user_id", using: :btree

  create_table "comments", force: true do |t|
    t.integer  "author_id",                null: false
    t.string   "resource_type", limit: 10, null: false
    t.integer  "resource_id",              null: false
    t.datetime "created_on",               null: false
    t.text     "content",                  null: false
    t.integer  "is_hidden",                null: false
  end

  add_index "comments", ["author_id"], name: "user_id", using: :btree
  add_index "comments", ["id"], name: "id", using: :btree
  add_index "comments", ["is_hidden"], name: "is_spam", using: :btree
  add_index "comments", ["resource_id"], name: "resource_id", using: :btree
  add_index "comments", ["resource_type"], name: "resource_type", using: :btree

  create_table "connections", id: false, force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "follow_id",  null: false
    t.datetime "created_on", null: false
  end

  add_index "connections", ["follow_id"], name: "follow_user_id", using: :btree
  add_index "connections", ["user_id", "follow_id"], name: "user_id_follow_id", unique: true, using: :btree
  add_index "connections", ["user_id"], name: "user_id", using: :btree

  create_table "images", force: true do |t|
    t.string   "uid",         limit: 50, null: false
    t.string   "file_name",   limit: 50, null: false
    t.string   "original",    limit: 50, null: false
    t.integer  "uploaded_by",            null: false
    t.integer  "owner_id",               null: false
    t.integer  "post_id",                null: false
    t.integer  "album_id",               null: false
    t.integer  "size",                   null: false
    t.datetime "created_on",             null: false
    t.integer  "is_hidden",              null: false
  end

  add_index "images", ["album_id"], name: "album_id", using: :btree
  add_index "images", ["id"], name: "id", unique: true, using: :btree
  add_index "images", ["is_hidden"], name: "is_hidden", using: :btree
  add_index "images", ["owner_id"], name: "user_id", using: :btree
  add_index "images", ["post_id"], name: "post_id", using: :btree
  add_index "images", ["uid"], name: "uid", using: :btree
  add_index "images", ["uploaded_by"], name: "uploaded_by", using: :btree

  create_table "likes", force: true do |t|
    t.integer  "user_id",                  null: false
    t.string   "resource_type", limit: 10, null: false
    t.integer  "resource_id",              null: false
    t.datetime "created_on",               null: false
  end

  add_index "likes", ["resource_id"], name: "resource_id", using: :btree
  add_index "likes", ["resource_type"], name: "resource_type", using: :btree
  add_index "likes", ["user_id", "resource_type", "resource_id"], name: "user_id_resource_type_resource_id", unique: true, using: :btree
  add_index "likes", ["user_id"], name: "user_id", using: :btree

  create_table "messages", force: true do |t|
    t.string   "type",         limit: 10,             null: false
    t.integer  "from_user_id",                        null: false
    t.integer  "to_user_id",                          null: false
    t.text     "content",                             null: false
    t.integer  "is_new",                  default: 0, null: false
    t.datetime "sent_on",                             null: false
    t.integer  "is_hidden",               default: 0, null: false
  end

  add_index "messages", ["from_user_id"], name: "from", using: :btree
  add_index "messages", ["is_hidden"], name: "is_hidden", using: :btree
  add_index "messages", ["is_new"], name: "status", using: :btree
  add_index "messages", ["to_user_id"], name: "to", using: :btree
  add_index "messages", ["type"], name: "type", using: :btree

  create_table "notifications", force: true do |t|
    t.integer  "type",                     null: false
    t.integer  "to_user",                  null: false
    t.string   "resource_type", limit: 10, null: false
    t.integer  "resource_id",              null: false
    t.integer  "is_new",                   null: false
    t.integer  "email_sent",               null: false
    t.datetime "created_on",               null: false
  end

  add_index "notifications", ["email_sent"], name: "is_sent", using: :btree
  add_index "notifications", ["is_new"], name: "is_read", using: :btree
  add_index "notifications", ["resource_id"], name: "resource_id", using: :btree
  add_index "notifications", ["resource_type"], name: "resource_type", using: :btree
  add_index "notifications", ["to_user"], name: "user_id", using: :btree
  add_index "notifications", ["type"], name: "type", using: :btree

  create_table "options", primary_key: "meta_key", force: true do |t|
    t.text "meta_value", null: false
  end

  add_index "options", ["meta_key"], name: "key", using: :btree

  create_table "post_meta", force: true do |t|
    t.integer "post_id",               null: false
    t.string  "meta_key",   limit: 50, null: false
    t.text    "meta_value",            null: false
  end

  add_index "post_meta", ["meta_key"], name: "meta_key", using: :btree
  add_index "post_meta", ["post_id"], name: "resource_id", using: :btree

  create_table "posts", force: true do |t|
    t.integer  "author_id",                         null: false
    t.integer  "wall_id",               default: 0, null: false
    t.text     "content",                           null: false
    t.string   "privacy",    limit: 50,             null: false
    t.datetime "created_on",                        null: false
    t.integer  "is_hidden",             default: 0, null: false
  end

  add_index "posts", ["author_id"], name: "user_id", using: :btree
  add_index "posts", ["is_hidden"], name: "is_spam", using: :btree
  add_index "posts", ["wall_id"], name: "wall_id", using: :btree

  create_table "profile_meta", id: false, force: true do |t|
    t.integer "profile_id",            null: false
    t.string  "meta_key",   limit: 50, null: false
    t.text    "meta_value",            null: false
  end

  add_index "profile_meta", ["meta_key"], name: "meta_key", using: :btree
  add_index "profile_meta", ["profile_id", "meta_key"], name: "profile_id_meta_key", unique: true, using: :btree
  add_index "profile_meta", ["profile_id"], name: "profile_id", using: :btree

  create_table "profiles", force: true do |t|
    t.string  "type",            limit: 50,              null: false
    t.string  "name",            limit: 50,              null: false
    t.string  "screen_name",     limit: 50,              null: false
    t.integer "owner"
    t.string  "password",        limit: 100
    t.string  "language",        limit: 10
    t.string  "role",            limit: 50
    t.string  "email"
    t.string  "activationkey",   limit: 50
    t.string  "avatar",                                  null: false
    t.string  "cover",                                   null: false
    t.integer "relogin_request",             default: 0, null: false
    t.string  "default_privacy", limit: 50
    t.string  "profile_privacy", limit: 50,              null: false
    t.integer "is_hidden",                   default: 0, null: false
    t.string  "facebook_id"
    t.string  "facebook_token"
  end

  add_index "profiles", ["activationkey"], name: "activationkey", using: :btree
  add_index "profiles", ["email"], name: "email", unique: true, using: :btree
  add_index "profiles", ["is_hidden"], name: "is_hidden", using: :btree
  add_index "profiles", ["name"], name: "name", using: :btree
  add_index "profiles", ["name"], name: "username", unique: true, using: :btree
  add_index "profiles", ["owner"], name: "owner", using: :btree
  add_index "profiles", ["role"], name: "role", using: :btree
  add_index "profiles", ["screen_name"], name: "screen_name", using: :btree
  add_index "profiles", ["type"], name: "type", using: :btree

  create_table "reports", force: true do |t|
    t.integer  "user_id",                  null: false
    t.string   "resource_type", limit: 50, null: false
    t.integer  "resource_id",              null: false
    t.text     "reason",                   null: false
    t.datetime "created_on",               null: false
    t.integer  "reviewed_by",              null: false
    t.integer  "is_accepted",              null: false
  end

  add_index "reports", ["is_accepted"], name: "is_accepted", using: :btree
  add_index "reports", ["resource_id"], name: "resource_id", using: :btree
  add_index "reports", ["resource_type"], name: "resource_type", using: :btree
  add_index "reports", ["reviewed_by"], name: "reviewed_by", using: :btree
  add_index "reports", ["user_id"], name: "user_id", using: :btree

  create_table "sessions", force: true do |t|
    t.integer "modified", null: false
    t.integer "lifetime", null: false
    t.text    "data",     null: false
  end

  create_table "visits", force: true do |t|
    t.integer  "user_id",                  null: false
    t.string   "resource_type", limit: 10, null: false
    t.integer  "resource_id",              null: false
    t.string   "address",       limit: 50, null: false
    t.datetime "created_on",               null: false
  end

  add_index "visits", ["resource_id"], name: "resource_id", using: :btree
  add_index "visits", ["resource_type"], name: "resource_type", using: :btree
  add_index "visits", ["user_id"], name: "user_id", using: :btree

end
