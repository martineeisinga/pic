class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookings
  has_many :saved_trips

  mount_uploader :photo, PhotoUploader
end
