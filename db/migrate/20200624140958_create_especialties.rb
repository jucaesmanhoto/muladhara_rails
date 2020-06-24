class CreateEspecialties < ActiveRecord::Migration[6.0]
  def change
    create_table :especialties do |t|
      t.string :especialty_name

      t.timestamps
    end
  end
end
