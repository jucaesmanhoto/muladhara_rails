class CreateRoomFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :room_features do |t|
      t.string :name
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
