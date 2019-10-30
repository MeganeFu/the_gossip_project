class CommentsController < ApplicationController
	
	def new
		
		@comment = Comment.new
	end
	
		def create
		
		u = User.first
		puts "ok"
		@comment = Comment.new
		@comment.content = params[:content]
	
		@comment.user = u
		@comment.save
		
		if @comment.save
			flash[:success] = "Tu as ajouter ton super commentaire."
			redirect_to gossip_path
			
		else render "new"

	end
	end
	
end 