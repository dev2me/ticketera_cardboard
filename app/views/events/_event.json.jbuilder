json.extract! event, :id, :name, :date, :hour, :cupo, :type, :price, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
