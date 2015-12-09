class BattleshipGamesController < ApplicationController
  def index
    @games = BattleshipGame.all
  end

  def edit
  end

  def show
    @game = BattleshipGame.find(params[:id])
    @battleship = @game.battleships.new

  end

  def new
    @game = BattleshipGame.new
  end

  def create
    @game = BattleshipGame.new(params[:battleship_game].permit(:title))
    if @game.save
      redirect_to @game, notice: 'Battleship game successfully created.'
    else
      render :new
    end
  end
end
