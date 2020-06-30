class Address < ApplicationRecord
  validates :zip_code, :street, :neighborhood, :city, :state, :country, presence: true
  validates :number, numericality: { only_integer: true }, presence: true
  has_many :place_addresses
  has_many :professional_addresses
end
