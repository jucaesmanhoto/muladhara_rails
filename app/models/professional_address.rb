class ProfessionalAddress < ApplicationRecord
  belongs_to :professional
  belongs_to :address
end
