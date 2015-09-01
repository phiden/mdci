Rails.application.routes.draw do
  
	resources :user_sessions
	resources :users
	resources :admin
	
	root 'pages#map'

	get 'login' => 'user_sessions#new', :as => :login
	post 'logout' => 'user_sessions#destroy', :as => :logout
	
	get 'admin' => 'admin#index'

end
