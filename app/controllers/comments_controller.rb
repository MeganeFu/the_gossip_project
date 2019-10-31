class CommentsController < ApplicationController
	
	 before_action :require_login


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
	
	def require_login
    unless log_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_login_url # halts request cycle
    end
  end
end

