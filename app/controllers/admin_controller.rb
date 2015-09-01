class AdminController < ApplicationController

	def index
		
		@users = User.all
		flash.now[:alert] = 'controller loaded',  @users, @user
		
	end
	
end
