class Profile < ApplicationRecord
    validates :user_id, :full_name, :address_one, :city, :state, :zip, presence: !{message: "is not filled out." }
    belongs_to :user
end
