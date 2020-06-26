class Review < ApplicationRecord
  has_many :interagent_reviews
  has_many :interagents, through: :interagent_reviews

  validates :content, presence: true
  validates :rating, length: { in: 0..5 }, numericality: { only_integer: true }, presence: true
end
