class Telephone < ApplicationRecord
  validates :number, :area_code, :country_code, presence: true
end
