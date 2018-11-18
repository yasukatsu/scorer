class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create

    @player = Player.new(player_params)

  	if @player.save
  		redirect_to games_path, success: '選手登録に成功しました'
  	else
  		flash.now[:danger] = "選手登録に失敗しました"
  		render :new
  	end
  end

  private
  def player_params
    params.require(:player).permit(:name, :position)
  end
end
