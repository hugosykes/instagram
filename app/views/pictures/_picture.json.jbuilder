json.extract! picture, :id, :name, :description, :img_url, :created_at, :updated_at
json.url picture_url(picture, format: :json)
