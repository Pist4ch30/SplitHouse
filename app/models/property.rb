class Property < ApplicationRecord
  has_many_attached :photos
  has_many :bookings
  acts_as_favoritable
  has_many :parts
  validates :address, presence: true
  validates :price_part, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
