json.array!(@brandings) do |branding|
  json.extract! branding, :id, :main_color, :secondary_color, :background_color, :city_id
  json.url branding_url(branding, format: :json)
end
