class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :homestay
  validates :booking_start, presence: true
  validates :booking_end, presence: true
  enum status: { pending: 'Pending', confirm: 'Confirm', decline: 'Decline' }, _default: :pending
end
