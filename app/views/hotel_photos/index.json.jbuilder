json.array!(@hotel_photos) do |hotel_photo|
  json.extract! hotel_photo, :id, :hotel_id, :picture
  json.url hotel_photo_url(hotel_photo, format: :json)
end
