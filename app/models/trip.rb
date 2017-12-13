class Trip < ApplicationRecord
  belongs_to :user
  has_one :category
  has_many :bookings
end
