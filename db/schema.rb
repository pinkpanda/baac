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

ActiveRecord::Schema.define(version: 20150396133113) do

  create_table "accidents", force: :cascade do |t|
    t.float    "severity",         limit: 24
    t.integer  "injured",          limit: 4
    t.integer  "killed",           limit: 4
    t.integer  "minor_injured",    limit: 4
    t.integer  "serious_injured",  limit: 4
    t.integer  "uninjured",        limit: 4
    t.integer  "agglomeration_id", limit: 4
    t.integer  "assignment_id",    limit: 4
    t.integer  "atmoshpere_id",    limit: 4
    t.integer  "car_category_id",  limit: 4
    t.integer  "collision_id",     limit: 4
    t.integer  "insurance_id",     limit: 4
    t.integer  "intersection_id",  limit: 4
    t.integer  "light_id",         limit: 4
    t.integer  "membership_id",    limit: 4
    t.text     "address",          limit: 65535
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "city_id",          limit: 4
    t.integer  "organism_id",      limit: 4
  end

  add_index "accidents", ["agglomeration_id"], name: "index_accidents_on_agglomeration_id", using: :btree
  add_index "accidents", ["assignment_id"], name: "index_accidents_on_assignment_id", using: :btree
  add_index "accidents", ["atmoshpere_id"], name: "index_accidents_on_atmoshpere_id", using: :btree
  add_index "accidents", ["car_category_id"], name: "index_accidents_on_car_category_id", using: :btree
  add_index "accidents", ["collision_id"], name: "index_accidents_on_collision_id", using: :btree
  add_index "accidents", ["insurance_id"], name: "index_accidents_on_insurance_id", using: :btree
  add_index "accidents", ["intersection_id"], name: "index_accidents_on_intersection_id", using: :btree
  add_index "accidents", ["light_id"], name: "index_accidents_on_light_id", using: :btree
  add_index "accidents", ["membership_id"], name: "index_accidents_on_membership_id", using: :btree

  create_table "addresses", force: :cascade do |t|
    t.string   "lane_name",            limit: 255
    t.integer  "number_of_lanes",      limit: 4
    t.integer  "pr_number",            limit: 4
    t.float    "pr_distance",          limit: 24
    t.integer  "lane_number",          limit: 4
    t.integer  "lane_num_indice",      limit: 4
    t.string   "lane_alphanum_indice", limit: 255
    t.float    "latitude",             limit: 24
    t.float    "longitude",            limit: 24
    t.integer  "profile_id",           limit: 4
    t.integer  "zone_id",              limit: 4
    t.integer  "road_category_id",     limit: 4
    t.integer  "plan_id",              limit: 4
    t.integer  "infrastructure_id",    limit: 4
    t.integer  "location_id",          limit: 4
    t.integer  "traffic_id",           limit: 4
    t.integer  "lane_id",              limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "addresses", ["infrastructure_id"], name: "index_addresses_on_infrastructure_id", using: :btree
  add_index "addresses", ["lane_id"], name: "index_addresses_on_lane_id", using: :btree
  add_index "addresses", ["location_id"], name: "index_addresses_on_location_id", using: :btree
  add_index "addresses", ["plan_id"], name: "index_addresses_on_plan_id", using: :btree
  add_index "addresses", ["profile_id"], name: "index_addresses_on_profile_id", using: :btree
  add_index "addresses", ["road_category_id"], name: "index_addresses_on_road_category_id", using: :btree
  add_index "addresses", ["traffic_id"], name: "index_addresses_on_traffic_id", using: :btree
  add_index "addresses", ["zone_id"], name: "index_addresses_on_zone_id", using: :btree

  create_table "agglomerations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "assignments", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "atmoshperes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "car_categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "libelle",       limit: 255
    t.string   "code_insee",    limit: 255
    t.integer  "department_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "cities", ["department_id"], name: "index_cities_on_department_id", using: :btree

  create_table "collisions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "libelle",    limit: 255
    t.string   "code_insee", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "infrastructures", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "insurances", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "intersections", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "lanes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "lights", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "organisms", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "road_categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "traffics", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "vehicules", force: :cascade do |t|
    t.integer  "killed",          limit: 4
    t.integer  "serious_injured", limit: 4
    t.integer  "minor_injured",   limit: 4
    t.integer  "uninjured",       limit: 4
    t.date     "released"
    t.integer  "accident_id",     limit: 4
    t.integer  "car_category_id", limit: 4
    t.integer  "insurance_id",    limit: 4
    t.integer  "membership_id",   limit: 4
    t.integer  "assignment_id",   limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "vehicules", ["accident_id"], name: "index_vehicules_on_accident_id", using: :btree
  add_index "vehicules", ["assignment_id"], name: "index_vehicules_on_assignment_id", using: :btree
  add_index "vehicules", ["car_category_id"], name: "index_vehicules_on_car_category_id", using: :btree
  add_index "vehicules", ["insurance_id"], name: "index_vehicules_on_insurance_id", using: :btree
  add_index "vehicules", ["membership_id"], name: "index_vehicules_on_membership_id", using: :btree

  create_table "zones", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "addresses", "infrastructures"
  add_foreign_key "addresses", "lanes"
  add_foreign_key "addresses", "locations"
  add_foreign_key "addresses", "plans"
  add_foreign_key "addresses", "profiles"
  add_foreign_key "addresses", "road_categories"
  add_foreign_key "addresses", "traffics"
  add_foreign_key "addresses", "zones"
  add_foreign_key "cities", "departments"
  add_foreign_key "vehicules", "accidents"
  add_foreign_key "vehicules", "assignments"
  add_foreign_key "vehicules", "car_categories"
  add_foreign_key "vehicules", "insurances"
  add_foreign_key "vehicules", "memberships"
end
