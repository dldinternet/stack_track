json.array!(@stacks) do |stack|
  json.extract! stack, :id, :name, :environment_type, :account_id, :environment
  json.url stack_url(stack, format: :json)
end
