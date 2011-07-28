class SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:email])
    user = User.find_by_username(params[:email]) if user.nil?
    if user && user.authenticate(params[:password])
      flash[:success] = I18n.t :user_logged
      session[:user] = user
    else
      flash.now.alert = I18n.t :user_not_found
    end
  end

  def destroy
    session[:user] = nil
    reset_session
    flash[:notice] = I18n.t :user_logout_success
    redirect_to "/"
  end
end
