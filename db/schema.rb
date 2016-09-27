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

ActiveRecord::Schema.define(version: 20160920025955) do

  create_table "albums", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "year",       limit: 4
    t.integer  "artist_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "albums", ["artist_id"], name: "index_albums_on_artist_id", using: :btree

  create_table "artists", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "song_ratings", force: :cascade do |t|
    t.float    "rating_total", limit: 24
    t.integer  "rating_count", limit: 4
    t.integer  "song_id",      limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "song_ratings", ["song_id"], name: "index_song_ratings_on_song_id", using: :btree

  create_table "song_student_ratings", force: :cascade do |t|
    t.integer  "rating",     limit: 4
    t.integer  "song_id",    limit: 4
    t.integer  "student_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "song_student_ratings", ["song_id"], name: "index_song_student_ratings_on_song_id", using: :btree
  add_index "song_student_ratings", ["student_id"], name: "index_song_student_ratings_on_student_id", using: :btree

  create_table "songs", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "track",      limit: 4
    t.integer  "student_id", limit: 4
    t.integer  "album_id",   limit: 4
    t.integer  "artist_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "songs", ["album_id"], name: "index_songs_on_album_id", using: :btree
  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id", using: :btree
  add_index "songs", ["student_id"], name: "index_songs_on_student_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "firstName",  limit: 255
    t.string   "lastName",   limit: 255
    t.string   "username",   limit: 255
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "albums", "artists"
  add_foreign_key "song_ratings", "songs"
  add_foreign_key "song_student_ratings", "songs"
  add_foreign_key "song_student_ratings", "students"
  add_foreign_key "songs", "albums"
  add_foreign_key "songs", "artists"
  add_foreign_key "songs", "students"
end
