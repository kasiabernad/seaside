json.extract! @hotel, :id, :name, :description, :address, :latitude, :longitude, :website, :phone, :promoted, :city_id, :created_at, :updated_at
json.hotel_photos @hotel.hotel_photos.map{ |hotel_photo| hotel_photo.picture.url }
