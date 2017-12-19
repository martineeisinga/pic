class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookings, dependent: :destroy
  has_many :saved_trips, dependent: :destroy
  has_many :activities, dependent: :destroy

  mount_uploader :photo, PhotoUploader

  validates :photo, presence: true
end
