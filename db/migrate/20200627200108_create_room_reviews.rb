class CreateRoomReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :room_reviews do |t|
      t.references :room, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
