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
			flash[:success] = "Tu as ajouter ton super potin."
			redirect_to root_path
			
		else render "new"

	end
	end
	
def edit
	@gossip = Gossip.find(params[:id])
end
	
	
def update
  @gossip = Gossip.find(params[:id])
	gossip_params = params.require(:gossip).permit(:title, :content)
	if @gossip.update(gossip_params)
		flash[:success] = "le gossip est modifié"
    redirect_to root_path
  else
    render :edit
  end
end
	 
	
	
end 