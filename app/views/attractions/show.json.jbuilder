json.extract! @attraction, :id, :name, :description, :address, :latitude, :longitude, :website, :phone, :promoted, :city_id, :created_at, :updated_at
json.attraction_photos @attraction.attraction_photos.map{ |attraction_photo| attraction_photo.picture.url }
