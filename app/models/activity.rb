class Activity < ApplicationRecord
  belongs_to :trip

  mount_uploader :photo, PhotoUploader

  validates :photo, presence: true
  validates :name, presence: true
  validates :activity_type, presence: true
  validates :description, length: { maximum: 100 }
end
