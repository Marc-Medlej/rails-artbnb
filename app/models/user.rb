class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :artworks
  has_many :bookings
  has_many :artwork_bookings, through: :artworks, source: :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
