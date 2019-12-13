json.extract! song, :id, :album_id, :name, :notes, :favourite, :created_at, :updated_at
json.url song_url(song, format: :json)
