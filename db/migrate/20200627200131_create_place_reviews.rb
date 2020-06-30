class CreatePlaceReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :place_reviews do |t|
      t.references :place, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
