class UsersController < ApplicationController

def show

		@user = User.find(params[:id])
  	@city = City.find(params[:id])
	end

	
	
def new
	  @user = User.new
	end 
	
	
	def create
		city = City.first
		puts "ok"
		@user = User.new(first_name: params[:first_name],
   email: params[:email], password: params[:password], city_id: city.id)
		puts "ok"
		
		if @user.save
			flash[:success] = "Ton enregistrement a bien été pris en compte."
			redirect_to welcome_index_path
			
		else render "new"


	end
	end 
	
end 