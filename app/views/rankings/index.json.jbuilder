json.array!(@rankings) do |ranking|
  json.extract! ranking, :user, :liked, :userliked, :tagsliked
  json.url ranking_url(ranking, format: :json)
end
