class CommentsController < ApplicationController
	
	def new
		
		@comment = Comment.new
	end
	
		def create
		
		u = User.first
		@gossip = Gossip.find(params[:id])
		puts "ok"
		@comment = Comment.new('content' => params[:content])
#		@comment.content = params[:content]
	  @comment.gossip = @gossip
		@comment.user = u
		@comment.save
		
		if @comment.save
			flash[:success] = "Tu as ajouter ton super commentaire."
			redirect_to gossip_path
			
		else render "new"

	end
	end
	
end 