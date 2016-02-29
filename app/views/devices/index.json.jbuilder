json.array!(@devices) do |device|
  json.extract! device, :id, :description, :abbr
  json.url device_url(device, format: :json)
end
