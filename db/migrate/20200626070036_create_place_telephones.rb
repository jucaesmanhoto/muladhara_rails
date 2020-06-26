class CreatePlaceTelephones < ActiveRecord::Migration[6.0]
  def change
    create_table :place_telephones do |t|
      t.references :telephone, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
