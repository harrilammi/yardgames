class GamesController < ApplicationController

  def index
    @game = Game.new
    @teams = Team.all
    @games = Game.all
  end

  def create
    @game = Game.new(params[:game])
    if @game.save
      flash[:notice] = "Peli tallennettu."
    else
      @teams = Team.all
      render :index
    end
    redirect_to game_path(@game)
  end

  def show
    @game = Game.find(params[:id])
  end
end
