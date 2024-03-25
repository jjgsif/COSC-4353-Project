class Order < ApplicationRecord
    belongs_to :user

    validates :city, presence: true
    validates :state, presence: true
    validates :deliveryAddress, presence: true
    validates :zip, presence: true
    validates :profitMargin, presence: true
    validates :deliveryDate, presence: true
end
