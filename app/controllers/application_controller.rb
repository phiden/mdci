class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  protect_from_forgery with: :exception
 	#before_filter :require_login
 
 	def map
	  # front page 
		@map_settings = MapSetting.first
		
 	end
 
 	# View of current map settings
 	def admin_map
	  # add render statement
	  
	   @users = User.all
	   @map_settings = MapSetting.first
	
	end
 
 	# POST with changes
 	def edit_map
	  # add render statement
	  
 	end
	 	
 	private
 	
	def not_authenticated
	  redirect_to login_path, alert: "Please login first"
	end

end

