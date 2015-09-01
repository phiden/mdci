class AdminController < UsersController

	def admin
		
		flash.now[:alert] = 'controller loaded',  @users
		
	end
	
end
