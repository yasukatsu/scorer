class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create

    @player = Player.new(player_params)
    @team = current_team
    @player.team_id = @team.id

  	if @player.save
  		redirect_to games_path, success: '選手登録に成功しました'
  	else
  		flash.now[:danger] = "選手登録に失敗しました"
  		render :new
  	end
  end

  private
  def player_params
    params.require(:player).permit(:team_id, :name, :position)
  end
end
