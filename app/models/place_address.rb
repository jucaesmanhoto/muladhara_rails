class PlaceAddress < ApplicationRecord
  belongs_to :address
  belongs_to :place
end
