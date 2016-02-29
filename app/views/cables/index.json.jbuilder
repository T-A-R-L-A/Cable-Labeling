json.array!(@cables) do |cable|
  json.extract! cable, :id, :type, :code
  json.url cable_url(cable, format: :json)
end
