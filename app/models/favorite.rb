class Favorite < ApplicationRecord
  has_many :properies
  has_many :users
end
