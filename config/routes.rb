Rails.application.routes.draw do
	root to: "users#index"
	resources :users
	resources :posts do
		resources :comments
	end
	resources :sessions, only: [:new, :create, :destroy]
  	# Create a better looking URL for logging in
	get '/login', to: 'sessions#new'
	get '/logout', to: 'sessions#destroy'
end
