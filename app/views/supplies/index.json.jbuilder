json.array!(@supplies) do |supply|
  json.extract! supply, :id, :supplier_id, :p_location, :d_location, :p_time, :car, :rate_per_traveller, :s_available, :s_left
  json.url supply_url(supply, format: :json)
end
