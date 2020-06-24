class AvailableTime < ApplicationRecord

  validates :initial_timestamp, presence: true
  validates :final_timestamp, presence: true

end
