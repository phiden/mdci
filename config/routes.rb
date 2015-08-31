Rails.application.routes.draw do
  
	# root :to => 'users#index'
	resources :user_sessions
	resources :users
	
	get 'login' => 'user_sessions#new', :as => :login
	post 'logout' => 'user_sessions#destroy', :as => :logout
	#post 'logout' => 'pages#map', :as => :logout
  root 'pages#map'

end
