# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_09_08_061219) do

  create_table "agent_profiles", force: :cascade do |t|
    t.integer "age"
    t.integer "years_of_experience"
    t.string "bio"
    t.integer "agent_id"
  end

  create_table "agents", force: :cascade do |t|
    t.string "name"
    t.integer "id_number"
    t.integer "private_contact"
    t.integer "public_contact"
    t.integer "team_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.integer "contract_duration"
    t.integer "worth"
    t.integer "agent_id"
    t.integer "player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "race"
    t.string "nationality"
    t.integer "team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "year_founded"
    t.integer "agent_id"
    t.boolean "status"
  end

end
