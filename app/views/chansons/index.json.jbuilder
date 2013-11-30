json.array!(@chansons) do |chanson|
  json.extract! chanson, :titre, :parole
  json.url chanson_url(chanson, format: :json)
end
