json.extract! order, :id, :company_name, :orderNumber, :InState, :OrderDate, :Profit_Margin, :Gallon_Rqst, :created_at, :updated_at
json.url order_url(order, format: :json)
