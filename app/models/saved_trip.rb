class SavedTrip < ApplicationRecord
  belongs_to :user
  belongs_to :trip

   geocoded_by :location
  after_validation :geocode, if: :location_changed?
end
