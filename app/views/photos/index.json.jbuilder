json.array!(@photos) do |photo|
  json.extract! photo, :image, :user_id
  json.url photo_url(photo, format: :json)
end
