class ChangePlaceProfessionalToProfessionalPlace < ActiveRecord::Migration[6.0]
  def change
    rename_table :place_professional, :professional_place
  end
end
