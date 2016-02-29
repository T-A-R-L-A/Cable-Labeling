json.array!(@systems) do |system|
  json.extract! system, :id, :description, :abbr, :code
  json.url system_url(system, format: :json)
end
