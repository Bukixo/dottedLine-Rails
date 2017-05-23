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

ActiveRecord::Schema.define(version: 20170523085847) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "goals"
    t.integer  "assists"
    t.integer  "clean_sheets"
    t.integer  "appearances"
    t.integer  "total_shots"
    t.integer  "shots_on_target"
    t.integer  "shots_in_box"
    t.integer  "shots_outside_box"
    t.integer  "ariel_duels"
    t.integer  "successful_take_on"
    t.integer  "goal_conversion_rate"
    t.integer  "total_passes"
    t.integer  "forward_passes"
    t.integer  "backward_passes"
    t.integer  "successful_passes"
    t.integer  "chances_created"
    t.integer  "key_passes"
    t.integer  "long_balls"
    t.integer  "cross_accuracy"
    t.integer  "total_tackles"
    t.integer  "tackles_won"
    t.integer  "def_aerial_duels"
    t.integer  "blocks"
    t.integer  "fouls_committed"
    t.integer  "tackles_lost"
    t.integer  "defensive_errors"
    t.integer  "clearances"
    t.integer  "distribution_accuracy"
    t.integer  "punches"
    t.integer  "catches"
    t.integer  "dropped_ball_from_catch"
    t.string   "total"
    t.integer  "_saves"
    t.integer  "saves_with_feet"
    t.integer  "saves_bottom_corners"
    t.integer  "saves_top_corners"
    t.integer  "yellow_card"
    t.integer  "red_card"
    t.integer  "cards_diving"
    t.string   "cards_"
    t.integer  "bad_tackle"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["player_id"], name: "index_games_on_player_id", using: :btree
  end

  create_table "players", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "games", "players"
end
