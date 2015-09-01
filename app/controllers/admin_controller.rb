class AdminController < UsersController

	def admin
		# Admin page goes here, in the future
		@users = User.all
		flash.now[:alert] = 'controller loaded',  @users
		
	end
	
end
