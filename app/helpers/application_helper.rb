module ApplicationHelper
  def is_logged?
    !session[:user].nil?
  end
  def is_admin?
    !session[:user].profile.nil && session[:user].profile=="administrator"
  end  
  def current_user
    @current_user = session[:user] if session[:user]
  end
end
