json.array!(@attractions) do |attraction|
  json.extract! attraction, :id, :name, :description, :address, :latitude, :longitude, :website, :phone, :promoted, :city_id, :attraction_photos
  json.url attraction_url(attraction, format: :json)
end
