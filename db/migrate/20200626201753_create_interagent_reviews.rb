class CreateInteragentReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interagent_reviews do |t|
      t.references :review, null: false, foreign_key: true
      t.references :interagent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
