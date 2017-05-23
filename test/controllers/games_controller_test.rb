require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get games_url, as: :json
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post games_url, params: { game: { _saves: @game._saves, appearances: @game.appearances, ariel_duels: @game.ariel_duels, assists: @game.assists, backward_passes: @game.backward_passes, bad_tackle: @game.bad_tackle, blocks: @game.blocks, cards_: @game.cards_, cards_diving: @game.cards_diving, catches: @game.catches, chances_created: @game.chances_created, clean_sheets: @game.clean_sheets, clearances: @game.clearances, cross_accuracy: @game.cross_accuracy, def_aerial_duels: @game.def_aerial_duels, defensive_errors: @game.defensive_errors, distribution_accuracy: @game.distribution_accuracy, dropped_ball_from_catch: @game.dropped_ball_from_catch, forward_passes: @game.forward_passes, fouls_committed: @game.fouls_committed, goal_conversion_rate: @game.goal_conversion_rate, goals: @game.goals, key_passes: @game.key_passes, long_balls: @game.long_balls, player_id: @game.player_id, punches: @game.punches, red_card: @game.red_card, saves_bottom_corners: @game.saves_bottom_corners, saves_top_corners: @game.saves_top_corners, saves_with_feet: @game.saves_with_feet, shots_in_box: @game.shots_in_box, shots_on_target: @game.shots_on_target, shots_outside_box: @game.shots_outside_box, successful_passes: @game.successful_passes, successful_take_on: @game.successful_take_on, tackles_lost: @game.tackles_lost, tackles_won: @game.tackles_won, total: @game.total, total_passes: @game.total_passes, total_shots: @game.total_shots, total_tackles: @game.total_tackles, yellow_card: @game.yellow_card } }, as: :json
    end

    assert_response 201
  end

  test "should show game" do
    get game_url(@game), as: :json
    assert_response :success
  end

  test "should update game" do
    patch game_url(@game), params: { game: { _saves: @game._saves, appearances: @game.appearances, ariel_duels: @game.ariel_duels, assists: @game.assists, backward_passes: @game.backward_passes, bad_tackle: @game.bad_tackle, blocks: @game.blocks, cards_: @game.cards_, cards_diving: @game.cards_diving, catches: @game.catches, chances_created: @game.chances_created, clean_sheets: @game.clean_sheets, clearances: @game.clearances, cross_accuracy: @game.cross_accuracy, def_aerial_duels: @game.def_aerial_duels, defensive_errors: @game.defensive_errors, distribution_accuracy: @game.distribution_accuracy, dropped_ball_from_catch: @game.dropped_ball_from_catch, forward_passes: @game.forward_passes, fouls_committed: @game.fouls_committed, goal_conversion_rate: @game.goal_conversion_rate, goals: @game.goals, key_passes: @game.key_passes, long_balls: @game.long_balls, player_id: @game.player_id, punches: @game.punches, red_card: @game.red_card, saves_bottom_corners: @game.saves_bottom_corners, saves_top_corners: @game.saves_top_corners, saves_with_feet: @game.saves_with_feet, shots_in_box: @game.shots_in_box, shots_on_target: @game.shots_on_target, shots_outside_box: @game.shots_outside_box, successful_passes: @game.successful_passes, successful_take_on: @game.successful_take_on, tackles_lost: @game.tackles_lost, tackles_won: @game.tackles_won, total: @game.total, total_passes: @game.total_passes, total_shots: @game.total_shots, total_tackles: @game.total_tackles, yellow_card: @game.yellow_card } }, as: :json
    assert_response 200
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete game_url(@game), as: :json
    end

    assert_response 204
  end
end
