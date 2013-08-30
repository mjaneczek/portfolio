json.array!(@technologies) do |technology|
  json.extract! technology, :name
  json.url technology_url(technology, format: :json)
end
