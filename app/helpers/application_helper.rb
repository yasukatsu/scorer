module ApplicationHelper
  def current_user
    @current_team ||= Team.find_by(id: session[:team_id])
  end

  def logged_in?
    !current_user.nil?
  end
end
