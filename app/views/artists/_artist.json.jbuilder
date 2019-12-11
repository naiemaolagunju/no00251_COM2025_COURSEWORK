json.extract! artist, :id, :name, :image, :notes, :favourite, :created_at, :updated_at
json.url artist_url(artist, format: :json)
