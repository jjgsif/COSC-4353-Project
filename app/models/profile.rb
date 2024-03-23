class Profile < ApplicationRecord
    belongs_to :user

    validates :fullName, presence: true
    validates :addressOne, presence: true
    validates :zipcode, length: { is: 5 }, presence: true
    validates :state, presence: true, length: {is: 2}, inclusion: ["AL", "AK", "AZ", "AR", "TX", "CO", "CT", "CA","DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC","ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "UT", "VT", "VA", "WA", "WV", "WI","WY"]
    validates :city, presence: true
end
