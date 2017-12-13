class Trip < ApplicationRecord
  belongs_to :user
  has_one :category
  has_many :bookings
  has_many :saved_trips

  mount_uploader :photo, PhotoUploader
end
