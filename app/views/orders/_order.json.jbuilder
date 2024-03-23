json.extract! order, :id, :user_id, :gallonsRequested, :dateOrdered, :deliveryDate, :deliveryAddress, :city, :state, :zip, :created_at, :updated_at
json.url order_url(order, format: :json)
