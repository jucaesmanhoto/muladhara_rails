class PlaceTelephone < ApplicationRecord
  belongs_to :telephone
  belongs_to :place
end
