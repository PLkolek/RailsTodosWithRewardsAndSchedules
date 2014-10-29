json.array!(@rewards) do |reward|
  json.extract! reward, :id, :title, :description
  json.url reward_url(reward, format: :json)
end
