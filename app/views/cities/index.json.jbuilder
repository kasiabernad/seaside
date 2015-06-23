json.array!(@cities) do |city|
  json.url city_url(city, format: :json)
  json.id city.id
  json.name city.name
  json.description city.description
  json.cover_picture city.cover_picture.url
  json.logo_picture city.logo_picture.url
end