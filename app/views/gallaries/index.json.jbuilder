json.array!(@gallaries) do |gallary|
  json.extract! gallary, :id, :name, :image1, :image2
  json.url gallary_url(gallary, format: :json)
end
