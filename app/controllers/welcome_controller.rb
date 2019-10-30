class WelcomeController < ApplicationController
	def index
		
	end
	
	def show
		@first_name = params[:id]
	end
	
end