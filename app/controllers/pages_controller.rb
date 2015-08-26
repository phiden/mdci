class PagesController < ApplicationController
	
	def admin
		# Admin page goes here, in the future
	end
	
	def map
		@map_settings = MapSettings.create!(
			hashtag: 'puppy',
			latitude: 100,
			longitude: 100
		)
	end
	
end
