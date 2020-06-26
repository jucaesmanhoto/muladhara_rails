class CreateProfessionalAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :professional_addresses do |t|
      t.references :professional, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
