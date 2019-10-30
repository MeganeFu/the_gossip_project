class GossipsController < ApplicationController
	
	def show
		@gossip = Gossip.find(params[:id])
#		@city = City.find(params[:id])
		
	end
	
	def new
		@gossip = Gossip.new
	end 
	
	def create
		
		u = User.first
		puts "ok"
		@gossip = Gossip.new
		@gossip.title = params[:title]
		@gossip.content = params[:content]
		@gossip.user = u
		@gossip.save
		
		if @gossip.save
			redirect_to root_path
		else render "new"

	end
	end
	
	
	
end 