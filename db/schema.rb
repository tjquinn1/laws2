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

ActiveRecord::Schema.define(version: 20170503193349) do

  create_table "bills", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "billNumber"
    t.date     "propDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "point",      limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "bill_id"
    t.index ["bill_id"], name: "index_bps_on_bill_id", using: :btree
  end

  create_table "cosponsors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "bill_id"
    t.integer  "rep_id"
    t.index ["bill_id"], name: "index_cosponsors_on_bill_id", using: :btree
    t.index ["rep_id"], name: "index_cosponsors_on_rep_id", using: :btree
  end

  create_table "reps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "state"
    t.string   "chamber"
    t.string   "party"
    t.string   "streetAddress"
    t.integer  "zipcode"
    t.string   "stateAddress"
    t.string   "city"
    t.integer  "dateStart"
    t.integer  "dateEnd"
    t.integer  "congStart"
    t.integer  "congEnd"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "image"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "youtube"
    t.string   "gender"
    t.string   "url"
    t.string   "phone"
    t.string   "contact"
    t.string   "rss"
    t.string   "youtubeid"
    t.string   "bioguide"
    t.string   "thomas"
    t.string   "opensecret"
    t.string   "lis"
    t.string   "cspan"
    t.string   "govtrack"
    t.string   "votesmart"
    t.string   "ballotpedia"
    t.string   "icpsr"
    t.string   "wikipedia"
    t.string   "dob"
    t.string   "district"
  end

  create_table "sponsors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "rep_id"
    t.integer  "bill_id"
    t.index ["bill_id"], name: "index_sponsors_on_bill_id", using: :btree
    t.index ["rep_id"], name: "index_sponsors_on_rep_id", using: :btree
  end

  add_foreign_key "bps", "bills"
  add_foreign_key "cosponsors", "bills"
  add_foreign_key "cosponsors", "reps"
  add_foreign_key "sponsors", "bills"
  add_foreign_key "sponsors", "reps"
end
