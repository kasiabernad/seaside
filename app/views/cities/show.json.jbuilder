json.extract! @city, :id, :name, :description, :created_at, :updated_at
json.cover_picture @city.cover_picture.url
json.logo_picture @city.logo_picture.url
json.hotels @city.hotels do |hotel|
  json.name hotel.name
  json.description hotel.description
  json.address hotel.address
  json.latitude hotel.latitude
  json.longitude hotel.longitude
  json.website hotel.website
  json.phone hotel.phone
  json.promoted hotel.promoted
  json.photos hotel.hotel_photos.map{ |hotel_photo| hotel_photo.picture.url }
end
json.attractions @city.attractions do |attraction|
  json.name attraction.name
  json.description attraction.description
  json.address attraction.address
  json.latitude attraction.latitude
  json.longitude attraction.longitude
  json.website attraction.website
  json.phone attraction.phone
  json.promoted attraction.promoted
  json.photos attraction.attraction_photos.map{ |attraction_photo| attraction_photo.picture.url }
end