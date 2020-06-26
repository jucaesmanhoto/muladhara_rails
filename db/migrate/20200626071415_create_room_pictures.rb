class CreateRoomPictures < ActiveRecord::Migration[6.0]
  def change
    create_table :room_pictures do |t|
      t.references :room, null: false, foreign_key: true
      t.references :picture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
