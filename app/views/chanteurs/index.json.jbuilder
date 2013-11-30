json.array!(@chanteurs) do |chanteur|
  json.extract! chanteur, 
  json.url chanteur_url(chanteur, format: :json)
end
