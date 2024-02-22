json.extract! profile, :id, :full_name, :address_one, :address_two, :city, :state, :zip, :created_at, :updated_at
json.url profile_url(profile, format: :json)
