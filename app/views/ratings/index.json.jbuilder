json.array!(@ratings) do |rating|
  json.extract! rating, :id, :rating, :comment, :driver_id, :user_id, :rater_id
  json.url rating_url(rating, format: :json)
end
