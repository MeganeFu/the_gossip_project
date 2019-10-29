class GossipsController < ApplicationController
	
	def show
		@gossip = Gossip.find(params[:id])
	end
	
	def new
	end 
	
	def create
	@gossip = Gossip.new('title' => params[:tile], 'content' => params[:content])
	end
	
	
	
end 