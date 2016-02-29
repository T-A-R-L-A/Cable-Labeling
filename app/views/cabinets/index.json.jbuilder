json.array!(@cabinets) do |cabinet|
  json.extract! cabinet, :id, :description, :abbr, :room
  json.url cabinet_url(cabinet, format: :json)
end
