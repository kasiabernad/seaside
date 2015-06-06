json.array!(@attractions) do |attraction|
  json.extract! attraction, :id, :name, :description, :address, :latitude, :longitude, :website, :phone, :promoted, :city_id
  json.url attraction_url(attraction, format: :json)
end
