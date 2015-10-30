json.array!(@requests) do |request|
  json.extract! request, :id, :requester_id, :p_location, :p_time, :d_location, :status, :r_time
  json.url request_url(request, format: :json)
end
