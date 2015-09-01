class PagesController < ApplicationController
	
	def admin
		# Admin page goes here, in the future
		#@map_settings = MapSettings		
		@users = User.all
		
		#@map_settings = MapSetting.new(user_params)


	end
	
	def new
		@map_settings = MapSettings.new
	end
	
	def create
    @map_settings = MapSettings.new(user_params)
		binding.pry
    respond_to do |format|
 		  if @map_settings.save
        format.html do
      		redirect_to('admin', notice: 'Map setting was successfully created')
        end
        format.json { render :show, status: :created, location: @map_setting }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
	def map
		@map_settings = MapSettings.create!(
			hashtag: '305',
			latitude: 25.7667,
			longitude: -80.2000
		)
	end
	
end
