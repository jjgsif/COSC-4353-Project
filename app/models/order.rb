class Order < ApplicationRecord
    belongs_to :user

    validates :gallonsRequested, presence:true
    validates :deliveryDate, presence:true
    validates :deliveryAddress, presence:true
    validates :city, presence:true
    validates :state, presence: true, length: {is: 2}, inclusion: ["AL", "AK", "AZ", "AR", "TX", "CO", "CT", "CA","DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC","ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "UT", "VT", "VA", "WA", "WV", "WI","WY"]
    validates :zip, length: { is: 5 }, presence: true
end
