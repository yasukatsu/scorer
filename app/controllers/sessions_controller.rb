class SessionsController < ApplicationController
  def new
  end

  def create

    team = Team.find_by(team_name: params[:session][:team_name])
    if team && team.authenticate(params[:session][:password])
      log_in team
      redirect_to games_path(team.team_name), success: 'ログインに成功しました'
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
  end

  private
  def log_in(team)
    session[:team_id] = team.id
  end
end
