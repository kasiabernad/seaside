json.extract! @city, :id, :name, :description, :created_at, :updated_at
json.cover_picture @city.cover_picture.url
json.logo_picture @city.logo_picture.url
json.hotels @city.hotels
json.attractions @city.attractions