module ApplicationHelper
  def current_team
    @current_team ||= Team.find_by(id: session[:team_id])
  end

  def logged_in?
    !current_team.nil?
  end
end
