class PriceModule
  def initialize(location, gallons_requested, user_id)
    @current_price_per_gallon = 1.50
    @location_factor = location == "TX" ? 0.02 : 0.04
    @rate_history_factor = has_rate_history?(user_id) ? 0.01 : 0.00
    @gallons_requested_factor = gallons_requested > 1000 ? 0.02 : 0.03
    @company_profit_factor = 0.10
  end

  def calculate_price_per_gallon
    margin = (@location_factor - @rate_history_factor + @gallons_requested_factor + @company_profit_factor) * @current_price_per_gallon
    suggested_price_per_gallon = @current_price_per_gallon + margin
    suggested_price_per_gallon.round(3) # Round to 3 decimal places
  end

  def calculate_total_amount_due(gallons_requested)
    total_amount_due = gallons_requested * calculate_price_per_gallon
    total_amount_due.round(2) # No need to round here, already rounded in calculate_price_per_gallon
  end

  private

  def has_rate_history?(user_id)
    if Order.where(user_id: user_id).count > 1 
      true 
    else 
      false 
    end
  end
end