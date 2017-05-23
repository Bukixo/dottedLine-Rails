class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.references :player, foreign_key: true
      t.integer :goals
      t.integer :assists
      t.integer :clean_sheets
      t.integer :appearances
      t.integer :total_shots
      t.integer :shots_on_target
      t.integer :shots_in_box
      t.integer :shots_outside_box
      t.integer :ariel_duels
      t.integer :successful_take_on
      t.integer :goal_conversion_rate
      t.integer :total_passes
      t.integer :forward_passes
      t.integer :backward_passes
      t.integer :successful_passes
      t.integer :chances_created
      t.integer :key_passes
      t.integer :long_balls
      t.integer :cross_accuracy
      t.integer :total_tackles
      t.integer :tackles_won
      t.integer :def_aerial_duels
      t.integer :blocks
      t.integer :fouls_committed
      t.integer :tackles_lost
      t.integer :defensive_errors
      t.integer :clearances
      t.integer :distribution_accuracy
      t.integer :punches
      t.integer :catches
      t.integer :dropped_ball_from_catch
      t.string :total
      t.integer :_saves
      t.integer :saves_with_feet
      t.integer :saves_bottom_corners
      t.integer :saves_top_corners
      t.integer :yellow_card
      t.integer :red_card
      t.integer :cards_diving
      t.string :cards_
      t.integer :bad_tackle

      t.timestamps
    end
  end
end
