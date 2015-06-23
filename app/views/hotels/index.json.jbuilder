json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :name, :description, :address, :latitude, :longitude, :website, :phone, :promoted, :city_id, :hotel_photos
end
