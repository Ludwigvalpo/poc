json.extract! photo, :id, :url, :comment, :active, :user_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)
