class SessionsController < ApplicationController
  skip_before_filter :authenticate, :only =>[:create, :destroy]

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url, notice: "Signed in!"
  end

  def destroy
    session[:user_id] = nil
  end
end
