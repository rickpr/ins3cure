json.array!(@proverbs) do |proverb|
  json.extract! proverb, :id, :quote, :author
  json.url proverb_url(proverb, format: :json)
end
