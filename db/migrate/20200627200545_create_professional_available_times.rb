class CreateProfessionalAvailableTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :professional_available_times do |t|
      t.references :available_time, null: false, foreign_key: true
      t.references :professional, null: false, foreign_key: true

      t.timestamps
    end
  end
end
