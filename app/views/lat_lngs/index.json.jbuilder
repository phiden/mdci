json.array!(@lat_lngs) do |lat_lng|
  json.extract! lat_lng, :id, :lat, :lng
  json.url lat_lng_url(lat_lng, format: :json)
end
