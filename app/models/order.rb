class Order < ApplicationRecord
    belongs_to :user
    
    @state = ["AL", "AK", "AZ", "AR", "TX", "CO", "CT", "CA","DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC","ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "UT", "VT", "VA", "WA", "WV", "WI","WY"]

    def self.state
        @state
    end

    validates :gallonsRequested, presence:true
    validates :deliveryDate, presence:true
    validates :deliveryAddress, presence:true
    validates :city, presence:true
    validates :state, presence: true, length: {is: 2}, inclusion: ["AL", "AK", "AZ", "AR", "TX", "CO", "CT", "CA","DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC","ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "UT", "VT", "VA", "WA", "WV", "WI","WY"]
    validates :zip, length: { is: 5 }, presence: true
    # Method to calculate price per gallon
    def calculate_price_per_gallon
        price_module = PriceModule.new(state, gallonsRequested, user_id, id)
        price_module.calculate_price_per_gallon
    end

    # Method to calculate total amount due
    def calculate_total_amount_due
        price_module = PriceModule.new(state, gallonsRequested, user_id, id)
        price_module.calculate_total_amount_due(gallonsRequested)
    end

    validate :date_is_greater_than_today, on: :create # you want on create, otherwise a record becomes invalid after time

    private

    def date_is_greater_than_today
        return unless self.deliveryDate.present?
        errors.add(:deliveryDate, 'must be greater than today') unless self.deliveryDate > Date.today
    end
end
