class RoomReview < ApplicationRecord
  belongs_to :room
  belongs_to :review
end
