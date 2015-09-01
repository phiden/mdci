class MapSettingsController < ApplicationController
	
	respond_to :html
	
	def update
		respond_to do |format|
			
	    @map_setting = MapSetting.first
      if @map_setting.update(user_params)
	      
        #format.json { render :show, status: :ok, location: @user }
        format.html {redirect_to '/', notice: 'Map settings were successfully updated.' }
				
      else
        #format.html { render :edit }
        format.json { render json: @map_setting.errors, status: :unprocessable_entity }
      end
    end
    
		
		
		
	end
	
	private
    # Use callbacks to share common setup or constraints between actions.
    def set_map_setting
      @map_setting = MapSetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
	    params.require(:map_setting).permit(:hashtag, :latitude, :longitude)
	  end

	
end
