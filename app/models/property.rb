class Property < ApplicationRecord
  has_many :bookings
  has_many :favorites
  has_many :parts
  validates :address, presence: true
  validates :price_part, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
