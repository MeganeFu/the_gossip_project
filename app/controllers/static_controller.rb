class StaticController < ApplicationController
	def team
	end
	
	def contact
	end
	
	def home
  end
	
	def welcome
		puts  params[:user_entry]
	end
	
	def show_gossip
		puts @gossip = Gossip.find(params[:gossip_id])
	end
	
	def show_user
		puts @user = User.find(params[:user_id])
		
	end
end