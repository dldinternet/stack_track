json.array!(@accounts) do |account|
  json.extract! account, :id, :number, :name, :login_url
  json.url account_url(account, format: :json)
end
