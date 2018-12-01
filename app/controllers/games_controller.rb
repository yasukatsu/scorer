class GamesController < ApplicationController

  def index
    @games = Game.all
    @team = Team.find_by(team_name: current_team.team_name)
    @players = Player.all
  end

  def new
    @game = Game.new

  end

  def create
    @game = current_team.games.new(game_params)

    if @game.save
      redirect_to games_path success: '保存しました'
    else
      flash.now[:danger] = "保存に失敗しました"
      render :new
    end
  end

   private
   def game_params
     params.require(:game).permit(:score, :player)
   end
 end
