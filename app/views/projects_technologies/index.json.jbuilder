json.array!(@projects_technologies) do |projects_technology|
  json.extract! projects_technology, :project_id, :technology_id
  json.url projects_technology_url(projects_technology, format: :json)
end
