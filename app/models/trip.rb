class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookings, dependent: :destroy
  has_many :saved_trips, dependent: :destroy
  has_many :activities, dependent: :destroy


  mount_uploader :photo, PhotoUploader

  validates :photo, presence: true

   geocoded_by :location
  after_validation :geocode, if: :location_changed?

  def gmaps4rails_marker_picture
    {
      "rich_marker" =>  "<div class='my-marker'>It works!<img height='30' width='30' src='http://farm4.static.flickr.com/3212/3012579547_097e27ced9_m.jpg'/></div>"
    }
  end


end
