class Part < ApplicationRecord
  belongs_to :property
  belongs_to :user
  validates :nbr_part, presence: true

  after_validation :set_days_allowed

  enum status: {
    pending: 0,
    approved: 1,
    declined: 2
  }

  private

  def set_days_allowed
    self.days_allowed = nbr_part * 44
  end

  def set_total_amount
    self.total_amount = nbr_part * property.price_part
  end
end
