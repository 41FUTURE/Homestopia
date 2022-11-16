class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :homestay
  validates :booking_start, presence: true
  validates :booking_end, presence: true
  validates_inclusion_of :number_of_guests, in: [[1], [2], [3], [4]]
end
