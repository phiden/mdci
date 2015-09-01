Rails.application.routes.draw do
  
	resources :user_sessions
	resources :users
	resources :map_settings
	
	#root 'pages#map'
	root 'application#map'
	
	get 'admin' => 'application#admin_map'
	post 'admin' => 'application#edit_map'

	get 'login' => 'user_sessions#new', :as => :login
	post 'logout' => 'user_sessions#destroy', :as => :logout
	
	#get 'admin' => 'pages#admin'
	#get 'map' => 'pages#new'

end
