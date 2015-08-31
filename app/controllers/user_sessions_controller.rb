class UserSessionsController < ApplicationController
	
	skip_before_filter :require_login, except: [:destroy]
	
  def new
    @user = User.new
    #redirect_to('/admin', notice: "You've been logged in!")
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to('/admin', notice: "You've been logged in!")
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to('/', notice: 'Logged out!')
  end
end
