class ScoresController < ApplicationController
  def index
    @game = Game.new
    @team = current_team
    @players = Player.all
    @player_GK = Player.where(team_id: @team.id, position: "GK")
    @player_CP = Player.where(team_id: @team.id, position: "CP")
  end
end
