class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update, :destroy]

  # GET /games
  def index
    @games = Game.all

    render json: @games
  end

  # GET /games/1
  def show
    render json: @game
  end

  # POST /games
  def create
    @game = Game.new(game_params)

    if @game.save
      render json: @game, status: :created, location: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      render json: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  def destroy
    @game.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_params
      params.require(:game).permit(:player_id, :goals, :assists, :clean_sheets, :appearances, :total_shots, :shots_on_target, :shots_in_box, :shots_outside_box, :ariel_duels, :successful_take_on, :goal_conversion_rate, :total_passes, :forward_passes, :backward_passes, :successful_passes, :chances_created, :key_passes, :long_balls, :cross_accuracy, :total_tackles, :tackles_won, :def_aerial_duels, :blocks, :fouls_committed, :tackles_lost, :defensive_errors, :clearances, :distribution_accuracy, :punches, :catches, :dropped_ball_from_catch, :total, :_saves, :saves_with_feet, :saves_bottom_corners, :saves_top_corners, :yellow_card, :red_card, :cards_diving, :cards_, :bad_tackle)
    end
end
