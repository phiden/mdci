class PagesController < ApplicationController
	
	def login
		@hashtag = Hashtag.all
		@lat_lng = LatLng.all
	end
	
end

