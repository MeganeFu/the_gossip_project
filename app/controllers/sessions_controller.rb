class SessionsController < ApplicationController
	
	
  def new
		
  end  
	
	
	def create
		
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
			flash[:success] = "Welcome back"
      redirect_to root_path
    else
			
      flash.now[:alert] = "Email ou mot de passe invalide"
      render "new"
    end
  end  
	
	def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out!"
  end
end