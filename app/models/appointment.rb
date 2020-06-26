class Appointment < ApplicationRecord
  belongs_to :interagent
  belongs_to :professional
  belongs_to :room
  belongs_to :available_time
end
