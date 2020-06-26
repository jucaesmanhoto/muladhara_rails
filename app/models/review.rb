class Review < ApplicationRecord

  validates :content, presence: true
  validates :rating, length: { in: 0..5 }, numericality: { only_integer: true }, presence: true
end
