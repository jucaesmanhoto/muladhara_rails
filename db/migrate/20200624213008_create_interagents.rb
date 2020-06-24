class CreateInteragents < ActiveRecord::Migration[6.0]
  def change
    create_table :interagents do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :birth_date
      t.string :gender

      t.timestamps
    end
  end
end
