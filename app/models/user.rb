class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :homestays
  has_one_attached :photo

  validates :number_of_users, presence: true, numericality: { less_than_or_equal_to: 4 }
end
