class GuessesController < ApplicationController
  before_action :set_game

  def create
    @game.guesses.create!(guess_params)

    redirect_to game_path(@game), flash: { notice: 'Good guess!'}
  end


  private
  def set_game
    @game = Game.find(params[:game_id])
  end

  def guess_params
    params.require(:guess).permit(:number)
  end
end
