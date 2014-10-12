json.array!(@offers) do |offer|
  json.extract! offer, :id, :name, :offer, :price
  json.url offer_url(offer, format: :json)
end
