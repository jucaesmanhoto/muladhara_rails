class Professional < ApplicationRecord
  belongs_to :user

  has_many :professional_telephones
  has_many :professional_addresses
  
  has_many :telephones, through: :professional_telephone
  has_many :addresses, through: :professional_address
  
  validates :name, :birth_date, :sex, presence: :true
end
