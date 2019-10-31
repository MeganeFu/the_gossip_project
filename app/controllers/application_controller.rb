class ApplicationController < ActionController::Base

#include SessionHelper

helper_method :current_user
#before_action :require_login

  def current_user
		
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
		end
		
	end


#  private
#
#  def require_login
#    unless logged_in?
#      flash[:error] = "Vous devez vous connecter"
#      redirect_to new_session_path 
#    end
#  end
	
end