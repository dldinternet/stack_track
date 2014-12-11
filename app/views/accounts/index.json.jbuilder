json.array!(@accounts) do |account|
  json.extract! account, :id, :id, :name, :url
  json.url account_url(account, format: :json)
end
