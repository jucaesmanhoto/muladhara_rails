class Interagent < ApplicationRecord
  belongs_to :user
  # has_many :interagent_review

  # validates :birth_date, presence: true
  # validates :gender, presence: true
end