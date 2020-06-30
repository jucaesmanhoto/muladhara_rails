class CreateRoomSpecialties < ActiveRecord::Migration[6.0]
  def change
    create_table :room_specialties do |t|
      t.references :room, null: false, foreign_key: true
      t.references :specialty, null: false, foreign_key: true

      t.timestamps
    end
  end
end
