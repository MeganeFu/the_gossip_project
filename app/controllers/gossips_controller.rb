class GossipsController < ApplicationController
	
before_action :authenticate_user
before_action :right_user, only: [:edit, :update, :destroy]
	
	def show
		@gossip = Gossip.find(params[:id])
#		@city = City.find(params[:id])
		
	end
	
	def new
		@gossip = Gossip.new
	end 
	
	def create
		
	
		@gossip = Gossip.new
		@gossip.title = params[:title]
		@gossip.content = params[:content]
		@gossip.user = current_user
		@gossip.save
		
		if @gossip.save
			flash[:success] = "Tu as ajouter ton super potin."
			redirect_to welcome_index_path
			
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
    redirect_to welcome_index_path
  else
    render :edit
  end
end
	
	def destroy
		@gossip = Gossip.find(params[:id])
		@gossip.destroy
		
		redirect_to welcome_index_path
		
	end 

   private
  
    def authenticate_user
        unless current_user
            flash[:danger] = "Veuillez-vous connecter pour accéder au contenu."
            redirect_to new_session_path
        end
    end
	
	def right_user
    @gossip=Gossip.find(params[:id])
    @user=User.find(@gossip.user_id)
	 unless current_user == @user
       flash[:danger] = "Tu ne peux pas modifier ce gossip"
       redirect_to gossips_path 		
	 end
	
end 