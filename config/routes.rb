Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get '/team', to: 'static#team'
	get '/contact', to: 'static#contact'
	get '/welcome/:user_entry', to: 'static#welcome'
  root :to => 'static#home'
	get '/gossip/:gossip_id', to: 'static#show_gossip'
	get '/user/:user_id', to: 'static#show_user'
end
