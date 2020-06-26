class CreateProfessionalTelephones < ActiveRecord::Migration[6.0]
  def change
    create_table :professional_telephones do |t|
      t.references :professional, null: false, foreign_key: true
      t.references :telephone, null: false, foreign_key: true

      t.timestamps
    end
  end
end
