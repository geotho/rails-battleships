class BattleshipsController < ApplicationController
  def create
    @battleship = Battleship.new(params[:battleship].permit(:row, :column, :length, :battleship_game_id))
    if @battleship.save
      redirect_to @battleship.battleship_game, notice: 'Battleship game successfully created.'
    else
      render :new
    end
  end
end
