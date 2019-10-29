Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get '/team', to: 'static#team'
	get '/contact', to: 'static#contact'
	root :to => 'static#home'
	get '/welcome/:user_entry', to: 'dynamic#welcome'
#  get '/gossip/:id', to: 'gossip#show_gossip', as: 'show_gossip'
	get '/user/:id', to: 'dynamic#show_user', as: 'show_user'
	
	resources :gossips, except: [:index, :destroy] 

end
