json.extract! @city, :id, :name, :description, :cover_picture, :logo_picture, :created_at, :updated_at, 
json.hotels @city.hotels
json.attractions @city.attractions
