json.extract! log, :id, :user_id, :body, :created_at, :updated_at
json.url log_url(log, format: :json)
