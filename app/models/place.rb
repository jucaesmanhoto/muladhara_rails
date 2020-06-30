class Place < ApplicationRecord
  #validates :rooms, :place_pictures, :place_addresses, :place_telephones, :professional_places, :place_reviews, presence: true

  belongs_to :user

  has_many :rooms

  has_many :place_pictures
  has_many :pictures, through: :place_pictures

  has_many :addresses, through: :place_addresses
  has_many :place_addresses

  has_many :telephones, through: :place_telephones
  has_many :place_telephones

  has_many :professionals, through: :place_professionals
  has_many :professional_places

  has_many :reviews, through: :place_reviews
  has_many :place_reviews
end
