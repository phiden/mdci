class PagesController < ApplicationController
	
	def admin
		# Admin page goes here, in the future
	end
	
	def map
		@map_settings = MapSettings.create!(
			hashtag: '305',
			latitude: 25.7667,
			longitude: -80.2000
		)
	end
	
end
