json.array!(@chatforms) do |chatform|
  json.extract! chatform, :content
  json.url chatform_url(chatform, format: :json)
end
