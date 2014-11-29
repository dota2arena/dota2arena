module ApplicationHelper
  def signed_in?
    current_user.present?
  end

  def current_user
    User.find_by(steam_id: steam_id)
  end

  def steam_id
    session[:steam_id]
  end
end
