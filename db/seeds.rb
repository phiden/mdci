# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

map = MapSetting.create([{hashtag: 'puppy', latitude: 25.7667, longitude: -80.2000}])
admin = User.create([{email: 'admin@admin.com', password: 'changeme', password_confirmation: 'changeme'}])