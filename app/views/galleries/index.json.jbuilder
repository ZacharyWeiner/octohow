json.array!(@galleries) do |gallery|
  json.extract! gallery, :id, :name, :picture, :index
  json.url gallery_url(gallery, format: :json)
end
