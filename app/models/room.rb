class Room < ApplicationRecord
  belongs_to :place

  has_many :room_pictures
  has_many :pictures, through: :room_pictures
end
