class Booking < ApplicationRecord
  belongs_to :property
  belongs_to :user

  validates :finish_date, presence: true
  validates :start_date, presence: true

  after_validation :set_duration

  private

  def set_duration
    begin
    self.duration = (finish_date - start_date).to_i
    rescue
      if self.duration == nil
        self.duration = 0
      end
    end
  end
end
