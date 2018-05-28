json.extract! event, :id, :book, :address, :start_at, :members, :allocation, :status, :created_at, :updated_at
json.url event_url(event, format: :json)
