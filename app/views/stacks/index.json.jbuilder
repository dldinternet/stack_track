json.array!(@stacks) do |stack|
  json.extract! stack, :id, :name, :env_type, :account_id
  json.url stack_url(stack, format: :json)
end
