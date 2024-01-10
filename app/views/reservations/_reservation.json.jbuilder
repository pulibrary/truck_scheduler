json.extract! reservation, :id, :start_time, :end_time, :material, :site_location, :customer_id, :truck_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
