class Homestay < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_address,
    against: :address,
    using: {
      tsearch: { prefix: true }
    }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  acts_as_taggable_on :tags

  validates :price, presence: true
  validates :address, presence: true
  validates :accomodation, inclusion: { in: ["Apartment", "House"] }
  validates :number_of_users, presence: true, numericality: { less_than_or_equal_to: 4 }
end
