class GamesController < ApplicationController

  def index
    @games = Game.all
    @team = current_team
    @player_GK = Player.where(team_id: @team.id, position: "GK")
    @player_CP = Player.where(team_id: @team.id, position: "CP")
  end

  def new
    @game = Game.new
    @team = current_team
    @players = Player.all
    @player_GK = Player.where(team_id: @team.id, position: "GK")
    @player_CP = Player.where(team_id: @team.id, position: "CP")
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
