json.array!(@cabs) do |cab|
  json.extract! cab, :id, :name, :model, :price
  json.url cab_url(cab, format: :json)
end
