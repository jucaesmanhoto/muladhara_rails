class CreatePlacePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :place_pictures do |t|
      t.references :place, null: false, foreign_key: true
      t.references :picture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
