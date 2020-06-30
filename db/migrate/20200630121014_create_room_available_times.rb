class CreateRoomAvailableTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :room_available_times do |t|
      t.references :room, null: false, foreign_key: true
      t.references :available_time, null: false, foreign_key: true

      t.timestamps
    end
  end
end
