Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root :to => 'static#index'
  resources :welcome
	resources :team
	resources :contact
  resources :users
	resources :gossips
  resources :cities
	resources :comments
  

end
