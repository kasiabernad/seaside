json.array!(@attraction_photos) do |attraction_photo|
  json.extract! attraction_photo, :id, :attraction_id, :picture
  json.url attraction_photo_url(attraction_photo, format: :json)
end
