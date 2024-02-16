json.extract! register, :id, :username, :password, :clientID, :created_at, :updated_at
json.url register_url(register, format: :json)
