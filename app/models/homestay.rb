class Homestay < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  validates :price, presence: true
  validates :address, presence: true
  validates :availablity, presence: true
  validates :number_of_users, presence: true, numericality: { less_than_or_equal_to: 4 }
end
