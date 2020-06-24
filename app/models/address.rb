class Address < ApplicationRecord
  validates :zip_code; :street, :complement, :neighborhood, :city, :state, :country, presence: true
  validates :number, numericality: { only_integer: true }, presence: true
end
