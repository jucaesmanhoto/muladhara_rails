class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :price
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
