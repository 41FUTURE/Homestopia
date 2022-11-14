class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :homestay
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :user_is_not_homestay_owner
  validate :user_is_not_already_booked
  validate :homestay_available
end
