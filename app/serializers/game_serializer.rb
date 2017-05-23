class GameSerializer < ActiveModel::Serializer
  attributes :id, :goals, :assists, :clean_sheets, :appearances, :total_shots, :shots_on_target, :shots_in_box, :shots_outside_box, :ariel_duels, :successful_take_on, :goal_conversion_rate, :total_passes, :forward_passes, :backward_passes, :successful_passes, :chances_created, :key_passes, :long_balls, :cross_accuracy, :total_tackles, :tackles_won, :def_aerial_duels, :blocks, :fouls_committed, :tackles_lost, :defensive_errors, :clearances, :distribution_accuracy, :punches, :catches, :dropped_ball_from_catch, :total, :_saves, :saves_with_feet, :saves_bottom_corners, :saves_top_corners, :yellow_card, :red_card, :cards_diving, :cards_, :bad_tackle
  has_one :player
end
