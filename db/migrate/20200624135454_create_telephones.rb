class CreateTelephones < ActiveRecord::Migration[6.0]
  def change
    create_table :telephones do |t|
      t.string :number
      t.integer :area_code
      t.integer :country_code

      t.timestamps
    end
  end
end
