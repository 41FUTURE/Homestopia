class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :homestay
  validates :booking_start, presence: true
  validates :booking_end, presence: true
end
