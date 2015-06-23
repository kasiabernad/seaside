json.extract! @city, :id, :name, :description, :created_at, :updated_at
json.cover_picture @city.cover_picture.url
json.logo_picture @city.logo_picture.url
json.hotels @city.hotels do |hotel|
  json.name hotel.name
  json.description hotel.description
  json.photos hotel.hotel_photos.map{ |hotel_photo| hotel_photo.picture.url }
end
json.attractions @city.attractions