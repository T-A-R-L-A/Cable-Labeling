json.array!(@sections) do |section|
  json.extract! section, :id, :description, :abbr, :code
  json.url section_url(section, format: :json)
end
