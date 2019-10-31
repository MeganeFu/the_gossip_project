class CommentsController < ApplicationController
	
	def new
		
		@comment = Comment.new

	end
	
	def create
		user = User.first
		@comment = Comment.new(content: params[:content], gossip: Gossip.find(params[:id]), user_id: user.id)
                  			 
                  			 	 
   		if @comment.save # essaie de sauvegarder en base @gossip
     		 redirect_to gossip_path(params[:gossip_id])
     	else
     		 redirect_to gossip_path(params[:gossip_id])
    	end

	end


end

