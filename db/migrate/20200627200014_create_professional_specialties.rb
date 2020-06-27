class CreateProfessionalSpecialties < ActiveRecord::Migration[6.0]
  def change
    create_table :professional_specialties do |t|
      t.references :professional, null: false, foreign_key: true
      t.references :specialty, null: false, foreign_key: true

      t.timestamps
    end
  end
end
