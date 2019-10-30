class UserController < ApplicationController

def show

		@user = User.find(params[:id])
  	@city = City.find(params[:id])
	end
	
end