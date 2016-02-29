json.array!(@labels) do |label|
  json.extract! label, :id, :description
  json.url label_url(label, format: :json)
end
