class Booking < ApplicationRecord
  belongs_to :trip
  belongs_to :user

  validates_uniqueness_of :user_id, scope: :trip_id
end
