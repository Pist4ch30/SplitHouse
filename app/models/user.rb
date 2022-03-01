class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  acts_as_favoritor
  has_many :parts

  enum family_status: {
    single: 0,
    married: 1,
    pacsed: 2
  }
end
