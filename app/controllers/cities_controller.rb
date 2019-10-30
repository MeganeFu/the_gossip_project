class CitiesController < ApplicationController

def show
	@city = City.find(params[:id])
	@gossip = Gossip.find(params[:id])
end
	
end
