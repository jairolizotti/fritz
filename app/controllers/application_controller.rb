class ApplicationController < ActionController::Base
  protect_from_forgery

  def authorize
    if session[:user_id].nil? 
      session[:last_path] = request.path
      redirect_to new_session_path, :alert => "#{request.path} eh area restrita aos administradores"
    end
  end

  def signed_in?
    !session[:user_id].nil?
  end

  def current_user
    if session[:user_id] then User.find session[:user_id] end
  end
  
  helper_method :signed_in?, :current_user

end
