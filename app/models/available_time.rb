class AvailableTime < ApplicationRecord
  has_many :appointments
 
  validates :initial_timestamp, presence: true
  validates :final_timestamp, presence: true

end
