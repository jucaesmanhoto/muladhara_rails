class PlaceReview < ApplicationRecord
  belongs_to :place
  belongs_to :review
end
