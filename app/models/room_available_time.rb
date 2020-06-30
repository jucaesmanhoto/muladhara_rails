class RoomAvailableTime < ApplicationRecord
  belongs_to :room
  belongs_to :available_time
end
