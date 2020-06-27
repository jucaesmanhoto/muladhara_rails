class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :price
      t.references :interagent, null: false, foreign_key: true
      t.references :professional, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.references :available_time, null: false, foreign_key: true

      t.timestamps
    end
  end
end
