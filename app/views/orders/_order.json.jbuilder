json.extract! order, :id, :clientID, :gallonsRequested, :profitMargin, :deliveryAddress, :city, :state, :zip, :deliveryDate, :created_at, :updated_at
json.url order_url(order, format: :json)
