json.extract! event, :id, :title, :location, :date, :body, :created_at, :updated_at
json.url event_url(event, format: :json)
