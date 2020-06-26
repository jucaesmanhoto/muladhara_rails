class CreateProfessionals < ActiveRecord::Migration[6.0]
  def change
    create_table :professionals do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :birth_date
      t.string :sex
      t.string :name

      t.timestamps
    end
  end
end
