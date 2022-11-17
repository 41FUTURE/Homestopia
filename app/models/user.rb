class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :homestays, dependent: :destroy
  has_many :bookings_as_owner, through: :homestays, source: :bookings
  # has_one_attached :photo
end
