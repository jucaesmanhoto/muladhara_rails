class ProfessionalReview < ApplicationRecord
  belongs_to :professional
  belongs_to :review

  # validates :rate, length: { in: 0..5 }, numericality: { only_integer: true }, presence: true
end
