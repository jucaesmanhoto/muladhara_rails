class CreateProfessionalReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :professional_reviews do |t|
      t.references :professional, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
