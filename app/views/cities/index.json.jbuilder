json.array!(@cities) do |city|
  json.extract! city, :id, :name, :description, :cover_picture, :logo_picture
  json.url city_url(city, format: :json)
end
