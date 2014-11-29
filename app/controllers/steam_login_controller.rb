class SteamLoginController < ApplicationController

  skip_before_action :verify_authenticity_token, only: :create_steam_account

  def steam_sign_in
    redirect_to '/auth/steam'
  end

  def sign_out
    session[:steam_id] = nil
    redirect_to root_path
  end

  def create_steam_account
    user_attributes = request.env['omniauth.auth'].to_hash
    steam_id = user_attributes['uid']

    user = User.find_by(steam_id: steam_id)

    unless user
      user = User.build_from_oath(user_attributes)
    end

    sign_in(user)

    redirect_to root_path
  end

  def sign_in(user)
    session[:steam_id] = user.steam_id
  end
end