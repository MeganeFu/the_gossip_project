class DynamicController < ApplicationController

	def welcome
		puts  params[:user_entry]
	end
	
	
	def show_user

		@user = User.find(params[:id])
  	@city = City.find(@user.city_id)
	end
	
	
end
  